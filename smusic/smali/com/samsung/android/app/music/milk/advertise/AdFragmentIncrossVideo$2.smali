.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$2;
.super Ljava/lang/Object;
.source "AdFragmentIncrossVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->onAdVideoStarted(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 251
    const-string v0, "AdFragmentIncrossVideo-"

    const-string v1, "onAdVideoStarted : bBlock to false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->access$002(Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;Z)Z

    .line 253
    return-void
.end method
