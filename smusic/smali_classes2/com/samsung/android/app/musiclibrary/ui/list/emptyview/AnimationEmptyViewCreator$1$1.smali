.class Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;
.super Ljava/lang/Object;
.source "AnimationEmptyViewCreator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->showWithAnimation()V

    .line 117
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$animators:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    .line 118
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 120
    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;)Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;

    iget-object v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->access$000(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;)Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;->onEmptyViewAnimated()V

    .line 123
    :cond_1
    return-void
.end method
