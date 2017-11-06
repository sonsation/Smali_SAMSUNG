.class public Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;
.super Landroid/os/AsyncTask;
.source "ForwardRewindControlTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;,
        Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$ForwordRewindSkip;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final FAST_FORWARD:I = 0x1

.field public static final INTERVAL_TIME:I = 0x190

.field public static final REWIND:I = 0x2

.field public static final SINGLE_CLICK_TIME:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mDirection:I

.field private mIsCancel:Z

.field private final mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mIsCancel:Z

    .line 96
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    .line 97
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 113
    aget-object v1, p1, v4

    .line 114
    .local v1, "v":Ljava/lang/Object;
    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mDirection:I

    .line 119
    :goto_0
    const-wide/16 v6, 0x190

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mIsCancel:Z

    if-eqz v2, :cond_0

    .line 144
    const/4 v2, 0x0

    return-object v2

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "SMUSIC-MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FF, REW Task interrupted "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 126
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 129
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mIsCancel:Z

    .line 130
    const-string v5, "SMUSIC-MusicControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FF, REW Task second check isPressed ? "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mIsCancel:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    const-string v2, "MusicControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FF, REW Task v ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " direction : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mDirection:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 135
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;->onForward()V

    goto/16 :goto_0

    :cond_2
    move v2, v4

    .line 129
    goto :goto_2

    :cond_3
    move v2, v4

    .line 130
    goto :goto_3

    .line 138
    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mOnForwardRewindListener:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;->onRewind()V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCancel()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mIsCancel:Z

    .line 108
    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 109
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 100
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->mDirection:I

    .line 101
    return-void
.end method
