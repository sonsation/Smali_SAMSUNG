.class Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;
.super Ljava/lang/Object;
.source "SeslBackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

.field final synthetic val$containerId:I

.field final synthetic val$sceneRoot:Landroid/view/View;

.field final synthetic val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

.field final synthetic val$transition:Landroid/transition/Transition;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$sceneRoot:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iput p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$containerId:I

    iput-object p5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$transition:Landroid/transition/Transition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$sceneRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1459
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$state:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$containerId:I

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;->val$transition:Landroid/transition/Transition;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->excludeHiddenFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V

    .line 1460
    const/4 v0, 0x1

    return v0
.end method
