.class public Lcom/samsung/android/sdk/SsdkUnsupportedException;
.super Ljava/lang/Exception;
.source "SsdkUnsupportedException.java"


# instance fields
.field private mErrorType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "errorType"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    .line 52
    iput p2, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    .line 53
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/samsung/android/sdk/SsdkUnsupportedException;->mErrorType:I

    return v0
.end method
