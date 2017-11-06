.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
.super Ljava/lang/Object;
.source "Nlg.java"


# instance fields
.field private mAttribute:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNeedUserAction:Z

.field private mResultName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mResultValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mValue:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mNeedUserAction:Z

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mState:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method getAttribute()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getResultName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultName:Ljava/lang/String;

    return-object v0
.end method

.method getResultValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultValue:Ljava/lang/String;

    return-object v0
.end method

.method getState()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mState:Ljava/lang/String;

    return-object v0
.end method

.method getValue()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method isNeedUserAction()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mNeedUserAction:Z

    return v0
.end method

.method public setNeedUserAction(Z)V
    .locals 0
    .param p1, "needUserAction"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mNeedUserAction:Z

    .line 83
    return-void
.end method

.method public setResultParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "resultName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resultValue"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultValue:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attribute"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mAttribute:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mValue:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[NLG - state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, ", attribute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mAttribute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 93
    const-string v1, ", resultName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, ", resultValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->mResultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
