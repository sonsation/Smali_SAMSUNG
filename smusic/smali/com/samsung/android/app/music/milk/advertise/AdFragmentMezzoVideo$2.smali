.class Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$2;
.super Ljava/lang/Object;
.source "AdFragmentMezzoVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->onChangeCp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo$2;->this$0:Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdFragmentMezzoVideo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a02de

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 227
    return-void
.end method
