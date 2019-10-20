; ModuleID = 'c2ssa.c'
source_filename = "c2ssa.c"
target datalayout = "e-m:w-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc19.15.26730"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pointer() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 10, i32* %1, align 4
  store i32 12, i32* %2, align 4
  store i32 15, i32* %3, align 4
  store i32 16, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %2, align 4
  %8 = load i32*, i32** %5, align 8
  store i32 %7, i32* %8, align 4
  store i32 13, i32* %2, align 4
  %9 = load i32*, i32** %6, align 8
  store i32 14, i32* %9, align 4
  store i32 20, i32* %3, align 4
  store i32 21, i32* %4, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  call void @pointer()
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 9.0.0 (tags/RELEASE_900/final)"}
