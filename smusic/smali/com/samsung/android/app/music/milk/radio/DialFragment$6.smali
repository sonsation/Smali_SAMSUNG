.class Lcom/samsung/android/app/music/milk/radio/DialFragment$6;
.super Ljava/lang/Object;
.source "DialFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
    .line 404
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 407
    const-string v0, "mobile_data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    const-string v0, "DialFragment"

    const-string/jumbo v1, "onSettingChanged : mobile data is changed"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/radio/DialFragment$6;->this$0:Lcom/samsung/android/app/music/milk/radio/DialFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/radio/DialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/radio/DialFragment$6$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/radio/DialFragment$6$1;-><init>(Lcom/samsung/android/app/music/milk/radio/DialFragment$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 416
    :cond_0
    return-void
.end method
