.class public Ljava/security/PrivilegedActionException;
.super Ljava/lang/Exception;
.source "PrivilegedActionException.java"


# static fields
.field private static final serialVersionUID:J = 0x418f53f65211f5baL


# instance fields
.field private exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 68
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 69
    iput-object p1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    .line 67
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/PrivilegedActionException;->exception:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
