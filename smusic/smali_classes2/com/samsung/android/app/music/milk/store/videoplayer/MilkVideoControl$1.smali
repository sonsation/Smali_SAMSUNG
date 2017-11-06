.class Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;
.super Ljava/lang/Object;
.source "MilkVideoControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->retrieveViews()V
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
    .line 159
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;->this$0:Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->access$000(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;->onCloseButtonClicked()V

    .line 163
    return-void
.end method
