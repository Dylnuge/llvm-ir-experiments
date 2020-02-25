@.str = private unnamed_addr constant [4 x i8] c"%d\0a\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Fizz\0a\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Buzz\0a\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"FizzBuzz\0a\00", align 1

define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 1, i32* %1, align 4
  br label %2

; LABEL 2 (continue if i < 100)
  %3 = load i32, i32* %1, align 4
  %4 = icmp sle i32 %3, 100
  br i1 %4, label %5, label %25

; LABEL 5 (if i % 15 == 0)
  %6 = srem i32 %3, 15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

; LABEL 8 (printf("FizzBuzz\n")
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0))
  br label %22

; LABEL 10
  %11 = srem i32 %3, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

; LABEL 13
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  br label %22

; LABEL 15
  %16 = srem i32 %3, 5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

; LABEL 18
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  br label %22

; LABEL 20
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %22

; LABEL 22
  %23 = load i32, i32* %1, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %2

; LABEL 25
  ret i32 0
}

declare i32 @printf(i8*, ...) #1
