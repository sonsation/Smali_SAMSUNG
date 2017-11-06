.class Lcom/samsung/android/app/music/milk/radio/DialFragment$4;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/radio/DialFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/radio/DialFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/radio/DialFragment;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 298
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$4;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-wide/32 v4, 0xafc8

    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->internalShowLoading(ZJ)V

    .line 299
    return v1

    .line 298
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
