.class Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->prepareSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/view/View;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

.field final synthetic val$enterTransition:Landroid/transition/Transition;

.field final synthetic val$exitTransition:Landroid/transition/Transition;

.field final synthetic val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$isBack:Z

.field final synthetic val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$sharedElementTargets:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Landroid/transition/Transition;

.field final synthetic val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/Transition;ZLcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iput-object p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iput-object p6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iput-object p7, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    iput-boolean p8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$isBack:Z

    iput-object p9, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iput-object p10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sceneRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->removeTargets(Landroid/transition/Transition;Ljava/util/ArrayList;)V

    .line 1331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->excludeSharedElementViews(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$isBack:Z

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mapSharedElementsIn(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v5

    .line 1338
    .local v5, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setSharedElementTargets(Landroid/transition/Transition;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    invoke-virtual {v0, v5, v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setEpicenterIn(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;)V

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$inFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$outFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$isBack:Z

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->callSharedElementEnd(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V

    .line 1347
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$enterTransition:Landroid/transition/Transition;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$exitTransition:Landroid/transition/Transition;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTransition:Landroid/transition/Transition;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;->val$sharedElementTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->excludeSharedElementViews(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Ljava/util/ArrayList;Z)V

    .line 1349
    return v6
.end method
