.class public Landroid/security/keystore/KeyPermanentlyInvalidatedException;
.super Ljava/security/InvalidKeyException;
.source "KeyPermanentlyInvalidatedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Key permanently invalidated"

    invoke-direct {p0, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
