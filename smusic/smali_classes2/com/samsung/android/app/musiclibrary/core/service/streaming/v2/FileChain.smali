.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
.super Ljava/lang/Object;
.source "FileChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain$PlayingUri;
    }
.end annotation


# instance fields
.field private mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
.end method

.method public final requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    .locals 2
    .param p1, "request"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->request(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    .line 17
    .local v0, "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    if-nez v0, :cond_0

    .line 18
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    if-nez v1, :cond_1

    .line 20
    const/4 v0, 0x0

    .line 25
    .end local v0    # "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    :cond_0
    :goto_0
    return-object v0

    .line 22
    .restart local v0    # "file":Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->requestChain(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileRequest;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/IFile;

    move-result-object v0

    goto :goto_0
.end method

.method public final setNext(Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;)Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;
    .locals 1
    .param p1, "chain"    # Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;->mNext:Lcom/samsung/android/app/musiclibrary/core/service/streaming/v2/FileChain;

    return-object v0
.end method
