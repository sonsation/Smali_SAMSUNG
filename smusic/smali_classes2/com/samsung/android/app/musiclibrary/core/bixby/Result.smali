.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSuccess:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mSuccess:Z

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .line 16
    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "nlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mSuccess:Z

    .line 20
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .line 21
    return-void
.end method


# virtual methods
.method getNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    return-object v0
.end method

.method isSuccess()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mSuccess:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Result - success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nlg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 35
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->mNlg:Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
