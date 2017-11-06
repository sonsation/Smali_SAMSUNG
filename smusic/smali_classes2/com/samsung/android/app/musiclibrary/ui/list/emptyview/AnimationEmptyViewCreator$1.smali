.class Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;
.super Ljava/lang/Object;
.source "AnimationEmptyViewCreator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;->createEmptyView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

.field final synthetic val$animators:Ljava/util/List;

.field final synthetic val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$animators:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 113
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;)V

    .line 125
    .local v0, "animationRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/AnimationEmptyViewCreator$1;->val$iconImageView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicPathLineAnimationView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    const/4 v1, 0x1

    return v1
.end method
