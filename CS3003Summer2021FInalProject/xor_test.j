.class public xor_test
.super java/lang/Object

.method public <init>()V
	aload_0

	invokespecial java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
	.limit stack 14 ;(Hack!) Although it is possible to statically determine the size of the stack based off counting expression information 
			;in a function it's too much work for now. 
	.limit locals 5 ; #0 is reserved information is statically determined by counting declarations

ldc 1
istore 2
ldc 0
istore 3
ldc 20
istore 1
iload 1
ldc 5
isub
istore 0

LOOPTEST0:
iload 2
iload 3
ixor

ifne LOOPBODY0
goto LOOPEXIT0
LOOPBODY0:
iload 0
ldc 1
iadd
istore 0
iload 0
iload 1
	if_icmpgt TRUE2

FALSE2:
	bipush 0
	goto COMPLETED2

TRUE2:
	bipush 1

COMPLETED2:
ifne TRUE1
goto FALSE1

TRUE1:
ldc 1
istore 3
goto COMPLETE1

FALSE1:

COMPLETE1:
goto LOOPTEST0
LOOPEXIT0:

return
.end method
