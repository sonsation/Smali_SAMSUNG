.class Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;
.super Ljava/lang/Object;
.source "MilkVideoControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->hideDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$100(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->animateVisibility(Z)V

    .line 234
    return-void
.end method
