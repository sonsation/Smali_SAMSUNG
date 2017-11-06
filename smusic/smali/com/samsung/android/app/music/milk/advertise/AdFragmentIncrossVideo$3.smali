.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$3;
.super Ljava/lang/Object;
.source "AdFragmentIncrossVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->onAdError(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 318
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$3;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo$3;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentIncrossVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a02de

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    return-void
.end method
