.class public Lorg/brickred/socialauth/exception/ProviderStateException;
.super Ljava/lang/Exception;
.source "ProviderStateException.java"


# static fields
.field private static final errorMessage:Ljava/lang/String; = "This is not the same Provider object that was used for login."

.field private static final resolution:Ljava/lang/String; = "Please check if you stored the Provider in session"

.field private static final serialVersionUID:J = -0x38bf2c48863ad933L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "This is not the same Provider object that was used for login.Please check if you stored the Provider in session"

    return-object v0
.end method