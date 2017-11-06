.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.source "SeslBackStackRecord.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;,
        Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "SeslFragmentManager"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

.field mIndex:I

.field final mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V
    .locals 1
    .param p1, "manager"    # Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;-><init>()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAllowAddToBackStack:Z

    .line 240
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    .line 365
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 366
    return-void
.end method

.method private beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .locals 8
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;Z)",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 1101
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    .line 1106
    .local v2, "state":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    new-instance v0, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    .line 1108
    const/4 v6, 0x0

    .line 1110
    .local v6, "anyTransitionStarted":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_1

    .line 1111
    invoke-virtual {p1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .local v1, "containerId":I
    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1112
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->configureTransitions(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1114
    const/4 v6, 0x1

    .line 1110
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1119
    .end local v1    # "containerId":I
    :cond_1
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1120
    invoke-virtual {p2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1121
    .restart local v1    # "containerId":I
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p0

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    .line 1122
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->configureTransitions(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    const/4 v6, 0x1

    .line 1119
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    .end local v1    # "containerId":I
    :cond_3
    if-nez v6, :cond_4

    .line 1129
    const/4 v2, 0x0

    .line 1132
    :cond_4
    return-object v2
.end method

.method private calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v4

    if-nez v4, :cond_1

    .line 900
    :cond_0
    return-void

    .line 857
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 858
    .local v3, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_0
    if-eqz v3, :cond_0

    .line 859
    iget v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    .line 898
    :goto_1
    iget-object v3, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    goto :goto_0

    .line 861
    :pswitch_0
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 864
    :pswitch_1
    iget-object v0, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 865
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_5

    .line 866
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 867
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 868
    .local v2, "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v0, :cond_2

    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iget v5, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-ne v4, v5, :cond_3

    .line 869
    :cond_2
    if-ne v2, v0, :cond_4

    .line 870
    const/4 v0, 0x0

    .line 871
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 866
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 873
    :cond_4
    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    .line 878
    .end local v1    # "i":I
    .end local v2    # "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_5
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 882
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_2
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 885
    :pswitch_3
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 888
    :pswitch_4
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 891
    :pswitch_5
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 894
    :pswitch_6
    iget-object v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 859
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static captureExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/view/View;)Landroid/transition/Transition;
    .locals 1
    .param p0, "exitTransition"    # Landroid/transition/Transition;
    .param p1, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p4, "nonExistentView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/transition/Transition;"
        }
    .end annotation

    .prologue
    .line 1163
    .local p2, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p0, :cond_0

    .line 1165
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 1164
    invoke-static {p0, v0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->captureExitingViews(Landroid/transition/Transition;Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;Landroid/view/View;)Landroid/transition/Transition;

    move-result-object p0

    .line 1167
    :cond_0
    return-object p0
.end method

.method private configureTransitions(ILcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLandroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 42
    .param p1, "containerId"    # I
    .param p2, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Z",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1214
    .local p4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p5, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1215
    .local v6, "sceneRoot":Landroid/view/ViewGroup;
    if-nez v6, :cond_0

    .line 1216
    const/4 v4, 0x0

    .line 1312
    :goto_0
    return v4

    .line 1218
    :cond_0
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1219
    .local v8, "inFragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-nez v8, :cond_1

    .line 1220
    const/4 v4, 0x0

    goto :goto_0

    .line 1222
    :cond_1
    move-object/from16 v0, p4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1224
    .local v9, "outFragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    move/from16 v0, p3

    invoke-static {v8, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v12

    .line 1225
    .local v12, "enterTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    invoke-static {v8, v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v7

    .line 1227
    .local v7, "sharedElementTransition":Landroid/transition/Transition;
    move/from16 v0, p3

    invoke-static {v9, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;

    move-result-object v13

    .line 1228
    .local v13, "exitTransition":Landroid/transition/Transition;
    const/16 v24, 0x0

    .line 1229
    .local v24, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    .local v11, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v7, :cond_2

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->remapSharedElements(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v24

    .line 1232
    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1233
    const/4 v7, 0x0

    .line 1234
    const/16 v24, 0x0

    .line 1250
    :cond_2
    :goto_1
    if-nez v12, :cond_6

    if-nez v7, :cond_6

    if-nez v13, :cond_6

    .line 1252
    const/4 v4, 0x0

    goto :goto_0

    .line 1237
    :cond_3
    if-eqz p3, :cond_5

    iget-object v0, v9, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v38, v0

    .line 1240
    .local v38, "callback":Landroid/app/SharedElementCallback;
    :goto_2
    if-eqz v38, :cond_4

    .line 1241
    new-instance v40, Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1242
    .local v40, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1243
    .local v41, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2, v4}, Landroid/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .end local v40    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v41    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v10, p3

    .line 1245
    invoke-direct/range {v4 .. v13}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->prepareSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/view/View;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)V

    goto :goto_1

    .line 1237
    .end local v38    # "callback":Landroid/app/SharedElementCallback;
    :cond_5
    iget-object v0, v8, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    move-object/from16 v38, v0

    goto :goto_2

    .line 1255
    :cond_6
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    .local v23, "exitingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v13, v9, v0, v1, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->captureExitingViews(Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Landroid/view/View;)Landroid/transition/Transition;

    move-result-object v13

    .line 1260
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_8

    if-eqz v24, :cond_8

    .line 1261
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/View;

    .line 1262
    .local v39, "epicenterView":Landroid/view/View;
    if-eqz v39, :cond_8

    .line 1263
    if-eqz v13, :cond_7

    .line 1264
    move-object/from16 v0, v39

    invoke-static {v13, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1266
    :cond_7
    if-eqz v7, :cond_8

    .line 1267
    move-object/from16 v0, v39

    invoke-static {v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->setEpicenter(Landroid/transition/Transition;Landroid/view/View;)V

    .line 1273
    .end local v39    # "epicenterView":Landroid/view/View;
    :cond_8
    new-instance v18, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 1281
    .local v18, "viewRetriever":Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$ViewRetriever;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1282
    .local v22, "enteringViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v25, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct/range {v25 .. v25}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    .line 1284
    .local v25, "renamedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    const/16 v37, 0x1

    .line 1285
    .local v37, "allowOverlap":Z
    if-eqz v8, :cond_9

    .line 1286
    if-eqz p3, :cond_b

    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowReturnTransitionOverlap()Z

    move-result v37

    .line 1289
    :cond_9
    :goto_3
    move/from16 v0, v37

    invoke-static {v12, v13, v7, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->mergeTransitions(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Z)Landroid/transition/Transition;

    move-result-object v34

    .line 1292
    .local v34, "transition":Landroid/transition/Transition;
    if-eqz v34, :cond_a

    .line 1293
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->enteringEpicenterView:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-object/from16 v21, v0

    move-object v14, v12

    move-object v15, v7

    move-object/from16 v16, v13

    move-object/from16 v17, v6

    move-object/from16 v26, v11

    invoke-static/range {v14 .. v26}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->addTransitionTargets(Landroid/transition/Transition;Landroid/transition/Transition;Landroid/transition/Transition;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$ViewRetriever;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1297
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v34

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->excludeHiddenFragmentsAfterEnter(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V

    .line 1301
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v4, v5}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1303
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->excludeHiddenFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V

    .line 1305
    move-object/from16 v0, v34

    invoke-static {v6, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 1307
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nonExistentView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v26, v6

    move-object/from16 v28, v12

    move-object/from16 v29, v22

    move-object/from16 v30, v13

    move-object/from16 v31, v23

    move-object/from16 v32, v7

    move-object/from16 v33, v11

    move-object/from16 v36, v25

    invoke-static/range {v26 .. v36}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cleanupTransitions(Landroid/view/View;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Landroid/transition/Transition;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 1312
    :cond_a
    if-eqz v34, :cond_c

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1287
    .end local v34    # "transition":Landroid/transition/Transition;
    :cond_b
    invoke-virtual {v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAllowEnterTransitionOverlap()Z

    move-result v37

    goto :goto_3

    .line 1312
    .restart local v34    # "transition":Landroid/transition/Transition;
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V
    .locals 6
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "opcmd"    # I

    .prologue
    .line 433
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 434
    .local v0, "fragmentClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 435
    .local v1, "modifiers":I
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 436
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 437
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SeslFragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 444
    if-eqz p3, :cond_3

    .line 445
    iget-object v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 446
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t change tag of fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 450
    :cond_2
    iput-object p3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    .line 453
    :cond_3
    if-eqz p1, :cond_6

    .line 454
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    .line 455
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t add fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to container view with no id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    :cond_4
    iget v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-eqz v3, :cond_5

    iget v3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-eq v3, p1, :cond_5

    .line 459
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t change container ID of fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 463
    :cond_5
    iput p1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput p1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 466
    :cond_6
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 467
    .local v2, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    iput p4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 468
    iput-object p2, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 469
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 470
    return-void
.end method

.method private excludeHiddenFragmentsAfterEnter(Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V
    .locals 7
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p3, "containerId"    # I
    .param p4, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1454
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$3;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/view/View;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1463
    return-void
.end method

.method private static getEnterTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1136
    if-nez p0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1139
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1140
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReenterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 1139
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private static getExitTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p1, "isBack"    # Z

    .prologue
    .line 1144
    if-nez p0, :cond_0

    .line 1145
    const/4 v0, 0x0

    .line 1147
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 1147
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->cloneTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 1148
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private static getSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Landroid/transition/Transition;
    .locals 1
    .param p0, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p1, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "isBack"    # Z

    .prologue
    .line 1153
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1154
    :cond_0
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    .line 1157
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 1156
    :goto_1
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->wrapSharedElementTransition(Landroid/transition/Transition;)Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0

    .line 1158
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_1
.end method

.method private mapEnteringSharedElements(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z)",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1436
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    .line 1437
    .local v0, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 1438
    .local v1, "root":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1439
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1440
    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1441
    if-eqz p3, :cond_1

    .line 1442
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v0

    .line 1449
    :cond_0
    :goto_0
    return-object v0

    .line 1445
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private prepareSharedElementTransition(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/view/View;Landroid/transition/Transition;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLjava/util/ArrayList;Landroid/transition/Transition;Landroid/transition/Transition;)V
    .locals 12
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "sceneRoot"    # Landroid/view/View;
    .param p3, "sharedElementTransition"    # Landroid/transition/Transition;
    .param p4, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p5, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p6, "isBack"    # Z
    .param p8, "enterTransition"    # Landroid/transition/Transition;
    .param p9, "exitTransition"    # Landroid/transition/Transition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Landroid/view/View;",
            "Landroid/transition/Transition;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/transition/Transition;",
            "Landroid/transition/Transition;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1320
    .local p7, "sharedElementTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p3, :cond_0

    .line 1321
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v11

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p7

    move-object v5, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p6

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$2;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Landroid/view/View;Landroid/transition/Transition;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/transition/Transition;Landroid/transition/Transition;ZLcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v11, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1353
    :cond_0
    return-void
.end method

.method private static remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1411
    .local p0, "inMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "toGoInMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1422
    .end local p2    # "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :goto_0
    return-object p2

    .line 1414
    .restart local p2    # "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    :cond_0
    new-instance v2, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    .line 1415
    .local v2, "remappedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1416
    .local v1, "numKeys":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1417
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1418
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1419
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v3    # "view":Landroid/view/View;
    :cond_2
    move-object p2, v2

    .line 1422
    goto :goto_0
.end method

.method private remapSharedElements(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z)",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1172
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;-><init>()V

    .line 1173
    .local v0, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1174
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V

    .line 1175
    if-eqz p3, :cond_2

    .line 1176
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->retainAll(Ljava/util/Collection;)Z

    .line 1183
    :cond_0
    :goto_0
    if-eqz p3, :cond_3

    .line 1184
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_1

    .line 1185
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1188
    :cond_1
    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setBackNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    .line 1197
    :goto_1
    return-object v0

    .line 1178
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->remapNames(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v0

    goto :goto_0

    .line 1190
    :cond_3
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_4

    .line 1191
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1194
    :cond_4
    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    goto :goto_1
.end method

.method private setBackNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .locals 7
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1511
    .local p2, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    .line 1512
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1513
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1514
    .local v3, "source":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1515
    .local v2, "originalTarget":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1516
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1517
    invoke-virtual {v5}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    .line 1518
    .local v4, "target":Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 1519
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-static {v6, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .end local v4    # "target":Ljava/lang/String;
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1511
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 1521
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "originalTarget":Ljava/lang/String;
    .restart local v3    # "source":Ljava/lang/String;
    .restart local v4    # "target":Ljava/lang/String;
    .restart local v5    # "view":Landroid/view/View;
    :cond_2
    iget-object v6, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-static {v6, v4, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1525
    .end local v2    # "originalTarget":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "target":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private static setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p1, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    if-eqz p2, :cond_1

    .line 811
    iget v0, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 812
    .local v0, "containerId":I
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    .line 813
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 815
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 817
    :cond_0
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 818
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 822
    .end local v0    # "containerId":I
    :cond_1
    return-void
.end method

.method private setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 7
    .param p3, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 826
    if-eqz p3, :cond_2

    .line 827
    iget v6, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 828
    .local v6, "containerId":I
    if-eqz v6, :cond_1

    .line 829
    invoke-virtual {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 830
    invoke-virtual {p2, v6, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 832
    :cond_0
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p3, :cond_1

    .line 833
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 836
    :cond_1
    iget v0, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    if-lt v0, v2, :cond_2

    .line 837
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->makeActive(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 838
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-object v1, p3

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;IIIZ)V

    .line 841
    .end local v6    # "containerId":I
    :cond_2
    return-void
.end method

.method private static setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1487
    .local p0, "overrides":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1488
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1489
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1496
    .end local v0    # "index":I
    :cond_0
    :goto_1
    return-void

    .line 1488
    .restart local v0    # "index":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1494
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private setNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V
    .locals 5
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p3, "isEnd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1529
    .local p2, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->size()I

    move-result v0

    .line 1530
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1531
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1532
    .local v2, "source":Ljava/lang/String;
    invoke-virtual {p2, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v3

    .line 1533
    .local v3, "target":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1534
    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1536
    :cond_0
    iget-object v4, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-static {v4, v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1539
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "target":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static setNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1500
    .local p1, "sourceNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "targetNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 1501
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1502
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1503
    .local v1, "source":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1504
    .local v2, "target":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->nameOverrides:Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverride(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1507
    .end local v0    # "i":I
    .end local v1    # "source":Ljava/lang/String;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 422
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V

    .line 423
    return-object p0
.end method

.method public add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 428
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V

    .line 429
    return-object p0
.end method

.method public add(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V

    .line 417
    return-object p0
.end method

.method addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V
    .locals 1
    .param p1, "op"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    if-nez v0, :cond_0

    .line 401
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 407
    :goto_0
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    .line 408
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    .line 409
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    .line 410
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    .line 411
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mNumOp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mNumOp:I

    .line 412
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iput-object v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->prev:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 405
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    goto :goto_0
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 3
    .param p1, "sharedElement"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "transitionName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 562
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 567
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    return-object p0
.end method

.method public addToBackStack(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This SeslFragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    .line 588
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    .line 589
    return-object p0
.end method

.method public attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 529
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 530
    .local v0, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v1, 0x7

    iput v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 531
    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 532
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 534
    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6
    .param p1, "amt"    # I

    .prologue
    .line 636
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_1

    .line 658
    :cond_0
    return-void

    .line 639
    :cond_1
    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "SeslFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 642
    .local v1, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 643
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-eqz v3, :cond_3

    .line 644
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    .line 645
    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "SeslFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v5, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_3
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 649
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_5

    .line 650
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 651
    .local v2, "r":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    add-int/2addr v3, p1

    iput v3, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    .line 652
    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SeslFragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 656
    .end local v0    # "i":I
    .end local v2    # "r":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_5
    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    goto/16 :goto_0
.end method

.method public calculateBackFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p1, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p2, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mContainer:Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;->onHasView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 949
    :cond_0
    return-void

    .line 916
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 917
    .local v1, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_0
    if-eqz v1, :cond_0

    .line 918
    iget v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    .line 947
    :goto_1
    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->prev:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    goto :goto_0

    .line 920
    :pswitch_0
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 923
    :pswitch_1
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 924
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_2

    .line 925
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 924
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 928
    .end local v0    # "i":I
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 931
    :pswitch_2
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 934
    :pswitch_3
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 937
    :pswitch_4
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 940
    :pswitch_5
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {p0, p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setLastIn(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 943
    :pswitch_6
    iget-object v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-static {p1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setFirstOut(Landroid/util/SparseArray;Landroid/util/SparseArray;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_1

    .line 918
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method callSharedElementEnd(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Lcom/samsung/android/support/sesl/core/app/SeslFragment;ZLcom/samsung/android/support/sesl/core/util/SeslArrayMap;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "outFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p4, "isBack"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            "Z",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p5, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p4, :cond_1

    iget-object v1, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    .line 1360
    .local v1, "sharedElementCallback":Landroid/app/SharedElementCallback;
    :goto_0
    if-eqz v1, :cond_0

    .line 1361
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1362
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1363
    .local v2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1365
    .end local v0    # "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    return-void

    .line 1357
    .end local v1    # "sharedElementCallback":Landroid/app/SharedElementCallback;
    :cond_1
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    goto :goto_0
.end method

.method public commit()I
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 684
    :cond_0
    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 685
    const-string v2, "SeslFragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string v2, "SeslFragmentManager"

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 688
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 690
    .end local v0    # "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    .end local v1    # "pw":Ljava/io/PrintWriter;
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    .line 691
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    .line 692
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->allocBackStackIndex(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    .line 696
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 697
    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    return v2

    .line 694
    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public commitNow()V
    .locals 2

    .prologue
    .line 672
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->disallowAddToBackStack()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 673
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 674
    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->disallowAddToBackStack()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    .line 679
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execSingleAction(Ljava/lang/Runnable;Z)V

    .line 680
    return-void
.end method

.method public detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 519
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 520
    .local v0, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v1, 0x6

    iput v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 521
    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 522
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 524
    return-object p0
.end method

.method public disallowAddToBackStack()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAllowAddToBackStack:Z

    .line 604
    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 269
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "full"    # Z

    .prologue
    .line 272
    if-eqz p3, :cond_8

    .line 273
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    const-string v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 275
    const-string v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 276
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    .line 277
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    const-string v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    :cond_0
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    .line 283
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    const-string v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    :cond_2
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    .line 289
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    const-string v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    :cond_4
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    .line 295
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 300
    :cond_6
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 301
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    const-string v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 308
    :cond_8
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    if-eqz v5, :cond_10

    .line 309
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "innerPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 312
    .local v4, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v3, 0x0

    .line 313
    .local v3, "num":I
    :goto_0
    if-eqz v4, :cond_10

    .line 315
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "cmdStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 327
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    const-string v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 329
    if-eqz p3, :cond_c

    .line 330
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    .line 331
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const-string v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 334
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    :cond_a
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    .line 337
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    const-string v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    :cond_c
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v5, :cond_f

    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 344
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_f

    .line 345
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    .line 347
    const-string v5, "Removed: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 355
    :goto_3
    iget-object v5, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 316
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v1    # "i":I
    :pswitch_0
    const-string v0, "NULL"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 317
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "ADD"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 318
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "REPLACE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 319
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_3
    const-string v0, "REMOVE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 320
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_4
    const-string v0, "HIDE"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 321
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_5
    const-string v0, "SHOW"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 322
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_6
    const-string v0, "DETACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 323
    .end local v0    # "cmdStr":Ljava/lang/String;
    :pswitch_7
    const-string v0, "ATTACH"

    .restart local v0    # "cmdStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 349
    .restart local v1    # "i":I
    :cond_d
    if-nez v1, :cond_e

    .line 350
    const-string v5, "Removed:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    :cond_e
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 353
    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 358
    .end local v1    # "i":I
    :cond_f
    iget-object v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 360
    goto/16 :goto_0

    .line 362
    .end local v0    # "cmdStr":Ljava/lang/String;
    .end local v2    # "innerPrefix":Ljava/lang/String;
    .end local v3    # "num":I
    .end local v4    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :cond_10
    return-void

    .line 315
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method excludeHiddenFragments(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ILandroid/transition/Transition;)V
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "containerId"    # I
    .param p3, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1466
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1467
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1468
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1469
    .local v0, "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-ne v2, p2, :cond_0

    .line 1471
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v2, :cond_1

    .line 1472
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1473
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1474
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/transition/Transition;->excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;

    .line 1478
    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->hiddenFragmentViews:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1483
    .end local v0    # "fragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 393
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 396
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 385
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 388
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 499
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 500
    .local v0, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v1, 0x4

    iput v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 501
    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 502
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 504
    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mNumOp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapSharedElementsIn(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;ZLcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;
    .locals 4
    .param p1, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .param p2, "isBack"    # Z
    .param p3, "inFragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Z",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ")",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1381
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mapEnteringSharedElements(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;

    move-result-object v0

    .line 1385
    .local v0, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    if-eqz p2, :cond_1

    .line 1386
    iget-object v1, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_0

    .line 1387
    iget-object v1, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1390
    :cond_0
    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setBackNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    .line 1398
    :goto_0
    return-object v0

    .line 1392
    :cond_1
    iget-object v1, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    if-eqz v1, :cond_2

    .line 1393
    iget-object v1, p3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Landroid/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V

    .line 1396
    :cond_2
    invoke-direct {p0, p1, v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Z)V

    goto :goto_0
.end method

.method public popFromBackStack(ZLcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Landroid/util/SparseArray;Landroid/util/SparseArray;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .locals 17
    .param p1, "doStateMove"    # Z
    .param p2, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;"
        }
    .end annotation

    .prologue
    .line 953
    .local p3, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    .local p4, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    sget-boolean v13, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 954
    const-string v13, "SeslFragmentManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "popFromBackStack: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v5, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string v13, "SeslFragmentManager"

    invoke-direct {v5, v13}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    .line 956
    .local v5, "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    new-instance v10, Ljava/io/PrintWriter;

    invoke-direct {v10, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 957
    .local v10, "pw":Ljava/io/PrintWriter;
    const-string v13, "  "

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v10, v15}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 960
    .end local v5    # "logw":Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;
    .end local v10    # "pw":Ljava/io/PrintWriter;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v13, v13, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    if-lt v13, v14, :cond_2

    .line 961
    if-nez p2, :cond_3

    .line 962
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-nez v13, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-eqz v13, :cond_2

    .line 963
    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v13}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    move-result-object p2

    .line 970
    :cond_2
    :goto_0
    const/4 v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    .line 972
    if-eqz p2, :cond_4

    const/4 v12, 0x0

    .line 973
    .local v12, "transitionStyle":I
    :goto_1
    if-eqz p2, :cond_5

    const/4 v11, 0x0

    .line 974
    .local v11, "transition":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTail:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 975
    .local v7, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_3
    if-eqz v7, :cond_a

    .line 976
    if-eqz p2, :cond_6

    const/4 v8, 0x0

    .line 977
    .local v8, "popEnterAnim":I
    :goto_4
    if-eqz p2, :cond_7

    const/4 v9, 0x0

    .line 978
    .local v9, "popExitAnim":I
    :goto_5
    iget v13, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v13, :pswitch_data_0

    .line 1030
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown cmd: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 965
    .end local v7    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    .end local v11    # "transition":I
    .end local v12    # "transitionStyle":I
    :cond_3
    if-nez p1, :cond_2

    .line 966
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-static {v0, v13, v14}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setNameOverrides(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 972
    :cond_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    goto :goto_1

    .line 973
    .restart local v12    # "transitionStyle":I
    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    goto :goto_2

    .line 976
    .restart local v7    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    .restart local v11    # "transition":I
    :cond_6
    iget v8, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    goto :goto_4

    .line 977
    .restart local v8    # "popEnterAnim":I
    :cond_7
    iget v9, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    goto :goto_5

    .line 980
    .restart local v9    # "popExitAnim":I
    :pswitch_0
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 981
    .local v3, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v9, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 982
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 983
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 982
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    .line 1034
    :cond_8
    :goto_6
    iget-object v7, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->prev:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 1035
    goto :goto_3

    .line 986
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_1
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 987
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-eqz v3, :cond_9

    .line 988
    iput v9, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 989
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 990
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 989
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    .line 992
    :cond_9
    iget-object v13, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v13, :cond_8

    .line 993
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v13, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 994
    iget-object v13, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 995
    .local v6, "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v8, v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 996
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v6, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    .line 993
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1001
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v4    # "i":I
    .end local v6    # "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_2
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1002
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v8, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 1003
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_6

    .line 1006
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_3
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1007
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v8, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1009
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1008
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto :goto_6

    .line 1012
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_4
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1013
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v9, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 1014
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1015
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1014
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto :goto_6

    .line 1018
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_5
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1019
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v8, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 1020
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1021
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1020
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto :goto_6

    .line 1024
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_6
    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 1025
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v8, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    .line 1027
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v14

    .line 1026
    invoke-virtual {v13, v3, v14, v12}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_6

    .line 1037
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v8    # "popEnterAnim":I
    .end local v9    # "popExitAnim":I
    :cond_a
    if-eqz p1, :cond_b

    .line 1038
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v14, v14, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    .line 1039
    invoke-static {v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v15

    const/16 v16, 0x1

    .line 1038
    move/from16 v0, v16

    invoke-virtual {v13, v14, v15, v12, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IIIZ)V

    .line 1040
    const/16 p2, 0x0

    .line 1043
    :cond_b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ltz v13, :cond_c

    .line 1044
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {v13, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->freeBackStackIndex(I)V

    .line 1045
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    .line 1047
    :cond_c
    return-object p2

    .line 978
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public remove(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 489
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 490
    .local v0, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 491
    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 492
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 494
    return-object p0
.end method

.method public replace(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->replace(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "containerViewId"    # I
    .param p2, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V

    .line 484
    return-object p0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 702
    sget-boolean v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "SeslFragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Run: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_0
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_1

    .line 705
    iget v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-gez v12, :cond_1

    .line 706
    new-instance v12, Ljava/lang/IllegalStateException;

    const-string v13, "addToBackStack() called after commit()"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 710
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->bumpBackStackNesting(I)V

    .line 712
    const/4 v9, 0x0

    .line 713
    .local v9, "state":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    const/4 v4, 0x0

    .line 714
    .local v4, "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    const/4 v6, 0x0

    .line 715
    .local v6, "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v12, v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v13, 0x1

    if-lt v12, v13, :cond_2

    .line 716
    new-instance v4, Landroid/util/SparseArray;

    .end local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 717
    .restart local v4    # "firstOutFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    new-instance v6, Landroid/util/SparseArray;

    .end local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 719
    .restart local v6    # "lastInFragments":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/support/sesl/core/app/SeslFragment;>;"
    invoke-direct {p0, v4, v6}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->calculateFragments(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 721
    const/4 v12, 0x0

    invoke-direct {p0, v4, v6, v12}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->beginTransition(Landroid/util/SparseArray;Landroid/util/SparseArray;Z)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;

    move-result-object v9

    .line 724
    :cond_2
    if-eqz v9, :cond_3

    const/4 v11, 0x0

    .line 725
    .local v11, "transitionStyle":I
    :goto_0
    if-eqz v9, :cond_4

    const/4 v10, 0x0

    .line 726
    .local v10, "transition":I
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mHead:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 727
    .local v8, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    :goto_2
    if-eqz v8, :cond_e

    .line 728
    if-eqz v9, :cond_5

    const/4 v1, 0x0

    .line 729
    .local v1, "enterAnim":I
    :goto_3
    if-eqz v9, :cond_6

    const/4 v2, 0x0

    .line 730
    .local v2, "exitAnim":I
    :goto_4
    iget v12, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v12, :pswitch_data_0

    .line 794
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown cmd: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 724
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v8    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    .end local v10    # "transition":I
    .end local v11    # "transitionStyle":I
    :cond_3
    iget v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    goto :goto_0

    .line 725
    .restart local v11    # "transitionStyle":I
    :cond_4
    iget v10, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    goto :goto_1

    .line 728
    .restart local v8    # "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    .restart local v10    # "transition":I
    :cond_5
    iget v1, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    goto :goto_3

    .line 729
    .restart local v1    # "enterAnim":I
    :cond_6
    iget v2, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    goto :goto_4

    .line 732
    .restart local v2    # "exitAnim":I
    :pswitch_0
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 733
    .local v3, "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 734
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    .line 798
    :cond_7
    :goto_5
    iget-object v8, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->next:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    .line 799
    goto :goto_2

    .line 737
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_1
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 738
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iget v0, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    .line 739
    .local v0, "containerId":I
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v12, :cond_d

    .line 740
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_6
    if-ltz v5, :cond_d

    .line 741
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v12, v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 742
    .local v7, "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    sget-boolean v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_8

    const-string v12, "SeslFragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OP_REPLACE: adding="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " old="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_8
    iget v12, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-ne v12, v0, :cond_9

    .line 745
    if-ne v7, v3, :cond_a

    .line 746
    const/4 v3, 0x0

    iput-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 740
    :cond_9
    :goto_7
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 748
    :cond_a
    iget-object v12, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v12, :cond_b

    .line 749
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 751
    :cond_b
    iget-object v12, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 752
    iput v2, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 753
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_c

    .line 754
    iget v12, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    .line 755
    sget-boolean v12, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v12, :cond_c

    const-string v12, "SeslFragmentManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bump nesting of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_c
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v7, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto :goto_7

    .line 763
    .end local v5    # "i":I
    .end local v7    # "old":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_d
    if-eqz v3, :cond_7

    .line 764
    iput v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 765
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v3, v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto/16 :goto_5

    .line 769
    .end local v0    # "containerId":I
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_2
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 770
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v2, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 771
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_5

    .line 774
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_3
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 775
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v2, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 776
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_5

    .line 779
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_4
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 780
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 781
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_5

    .line 784
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_5
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 785
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v2, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 786
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_5

    .line 789
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :pswitch_6
    iget-object v3, v8, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 790
    .restart local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    iput v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mNextAnim:I

    .line 791
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, v3, v10, v11}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;II)V

    goto/16 :goto_5

    .line 801
    .end local v1    # "enterAnim":I
    .end local v2    # "exitAnim":I
    .end local v3    # "f":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    :cond_e
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v13, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v13, v13, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v10, v11, v14}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IIIZ)V

    .line 803
    iget-boolean v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v12, :cond_f

    .line 804
    iget-object v12, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v12, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addBackStackState(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    .line 806
    :cond_f
    return-void

    .line 730
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 623
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 625
    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 630
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 631
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 632
    return-object p0
.end method

.method public setBreadCrumbTitle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 609
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    .line 610
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 611
    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 616
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    .line 617
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 618
    return-object p0
.end method

.method public setCustomAnimations(II)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1
    .param p1, "enter"    # I
    .param p2, "exit"    # I

    .prologue
    const/4 v0, 0x0

    .line 539
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->setCustomAnimations(IIII)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 0
    .param p1, "enter"    # I
    .param p2, "exit"    # I
    .param p3, "popEnter"    # I
    .param p4, "popExit"    # I

    .prologue
    .line 545
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    .line 546
    iput p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    .line 547
    iput p3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    .line 548
    iput p4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    .line 549
    return-object p0
.end method

.method setEpicenterIn(Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;)V
    .locals 3
    .param p2, "state"    # Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1368
    .local p1, "namedViews":Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 1371
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/core/util/SeslArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1372
    .local v0, "epicenter":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1373
    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$TransitionState;->enteringEpicenterView:Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;

    iput-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransitionCompat21$EpicenterView;->epicenter:Landroid/view/View;

    .line 1376
    .end local v0    # "epicenter":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setTransition(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 0
    .param p1, "transition"    # I

    .prologue
    .line 554
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    .line 555
    return-object p0
.end method

.method public setTransitionStyle(I)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 0
    .param p1, "styleRes"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    .line 578
    return-object p0
.end method

.method public show(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 509
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>()V

    .line 510
    .local v0, "op":Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    .line 511
    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .line 512
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    .line 514
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    .line 256
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 260
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
