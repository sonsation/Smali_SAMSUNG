.class Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2$1;
.super Ljava/lang/Object;
.source "HeartFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2$1;->this$1:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1567
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2$1;->this$1:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;->val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->showWithAnimation()V

    .line 1568
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2$1;->this$1:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;->val$animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 1569
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 1571
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2$1;->this$1:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;

    iget-object v1, v1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;->access$2700(Lcom/samsung/android/app/music/list/local/HeartFragment$HeartEmptyViewCreator;)Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;->onEmptyViewAnimated()V

    .line 1572
    return-void
.end method
