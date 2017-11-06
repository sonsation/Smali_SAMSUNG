.class Lcom/mapps/android/view/AdVideoPlayer$13;
.super Ljava/lang/Object;
.source "AdVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/view/AdVideoPlayer;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdVideoPlayer;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/view/AdVideoPlayer$13;)Lcom/mapps/android/view/AdVideoPlayer;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$27(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mapps/android/view/AdVideoPlayer$13;->this$0:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-static {v0}, Lcom/mapps/android/view/AdVideoPlayer;->access$28(Lcom/mapps/android/view/AdVideoPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer$13$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/AdVideoPlayer$13$1;-><init>(Lcom/mapps/android/view/AdVideoPlayer$13;)V

    invoke-static {v0}, Lcom/mezzo/common/MZBtnUtils;->setDelayClick(Ljava/util/concurrent/Callable;)V

    .line 648
    :cond_0
    return-void
.end method
