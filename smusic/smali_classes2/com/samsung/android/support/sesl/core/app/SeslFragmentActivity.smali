.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.super Landroid/app/Activity;
.source "SeslFragmentActivity.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/samsung/android/support/sesl/core/app/SeslActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "SeslFragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

.field final mHandler:Landroid/os/Handler;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$HostCallbacks;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;)V

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->createController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    return-void
.end method

.method private allocateRequestIndex(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)I
    .locals 4
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    const v3, 0xfffe

    .line 939
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 940
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Too many pending SeslFragment activity results."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 944
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 945
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 949
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    .line 950
    .local v0, "requestIndex":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    iget-object v2, p1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 951
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    .line 954
    return v0
.end method

.method static checkForValidRequestCode(I)V
    .locals 2
    .param p0, "requestCode"    # I

    .prologue
    .line 826
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_0
    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 701
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 702
    if-nez p3, :cond_1

    .line 703
    const-string v3, "null"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 719
    :cond_0
    return-void

    .line 706
    :cond_1
    invoke-static {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    instance-of v3, p3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p3

    .line 710
    check-cast v1, Landroid/view/ViewGroup;

    .line 711
    .local v1, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 712
    .local v0, "N":I
    if-lez v0, :cond_0

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 716
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 717
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 716
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 12
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x56

    const/16 v7, 0x46

    const/16 v11, 0x2c

    const/16 v10, 0x20

    const/16 v8, 0x2e

    .line 635
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 636
    .local v2, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/16 v6, 0x7b

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 644
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x45

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v8

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x48

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x43

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v6

    if-eqz v6, :cond_8

    const/16 v6, 0x4c

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_9

    :goto_8
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_a

    const/16 v6, 0x53

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v8, 0x50

    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 661
    const/16 v6, 0x2d

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 665
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    .line 666
    .local v1, "id":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 667
    const-string v6, " #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 670
    .local v4, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 673
    const/high16 v6, -0x1000000

    and-int/2addr v6, v1

    sparse-switch v6, :sswitch_data_1

    .line 681
    :try_start_0
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    .local v3, "pkgname":Ljava/lang/String;
    :goto_a
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    .line 685
    .local v5, "typename":Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "entryname":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string v6, ":"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    .end local v0    # "entryname":Ljava/lang/String;
    .end local v3    # "pkgname":Ljava/lang/String;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "typename":Ljava/lang/String;
    :cond_1
    :goto_b
    const-string/jumbo v6, "}"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 641
    .end local v1    # "id":I
    :sswitch_0
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 642
    :sswitch_1
    const/16 v6, 0x49

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 643
    :sswitch_2
    const/16 v6, 0x47

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v6, v8

    .line 646
    goto/16 :goto_1

    :cond_3
    move v6, v8

    .line 647
    goto/16 :goto_2

    .line 648
    :cond_4
    const/16 v6, 0x44

    goto/16 :goto_3

    :cond_5
    move v6, v8

    .line 649
    goto/16 :goto_4

    :cond_6
    move v6, v8

    .line 650
    goto/16 :goto_5

    :cond_7
    move v6, v8

    .line 651
    goto/16 :goto_6

    :cond_8
    move v6, v8

    .line 652
    goto/16 :goto_7

    :cond_9
    move v7, v8

    .line 654
    goto/16 :goto_8

    :cond_a
    move v6, v8

    .line 655
    goto/16 :goto_9

    .line 675
    .restart local v1    # "id":I
    .restart local v4    # "r":Landroid/content/res/Resources;
    :sswitch_3
    :try_start_1
    const-string v3, "app"

    .line 676
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 678
    .end local v3    # "pkgname":Ljava/lang/String;
    :sswitch_4
    const-string v3, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 679
    .restart local v3    # "pkgname":Ljava/lang/String;
    goto :goto_a

    .line 692
    .end local v3    # "pkgname":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_b

    .line 640
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 673
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2
    .param p1, "retaining"    # Z

    .prologue
    const/4 v1, 0x1

    .line 722
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    if-nez v0, :cond_1

    .line 723
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    .line 724
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRetaining:Z

    .line 725
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onReallyStop()V

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 727
    :cond_1
    if-eqz p1, :cond_0

    .line 732
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStart()V

    .line 733
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStop(Z)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 619
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Local SeslFragmentActivity "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    const-string v1, " State:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 624
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 626
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 627
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 628
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 630
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v1, p3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 632
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 587
    .line 588
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;

    .line 589
    .local v0, "nc":Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;
    .locals 1

    .prologue
    .line 774
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportLoaderManager()Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 163
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    .line 164
    shr-int/lit8 v0, p1, 0x10

    .line 165
    .local v0, "requestIndex":I
    if-eqz v0, :cond_2

    .line 166
    add-int/lit8 v0, v0, -0x1

    .line 168
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 169
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->remove(I)V

    .line 170
    if-nez v2, :cond_0

    .line 171
    const-string v3, "SeslFragmentActivity"

    const-string v4, "Activity result delivered for unknown SeslFragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .end local v2    # "who":Ljava/lang/String;
    :goto_0
    return-void

    .line 174
    .restart local v2    # "who":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    .line 175
    .local v1, "targetFragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-nez v1, :cond_1

    .line 176
    const-string v3, "SeslFragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_1
    const v3, 0xffff

    and-int/2addr v3, p1

    invoke-virtual {v1, v3, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 183
    .end local v1    # "targetFragment":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .end local v2    # "who":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    .prologue
    .line 763
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->popBackStackImmediate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 195
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 245
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 253
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v6, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->attachHost(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    .line 255
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;

    .line 259
    .local v2, "nc":Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;
    if-eqz v2, :cond_0

    .line 260
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    iget-object v7, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->loaders:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V

    .line 262
    :cond_0
    if-eqz p1, :cond_3

    .line 263
    const-string v6, "android:support:fragments"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 264
    .local v3, "p":Landroid/os/Parcelable;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    if-eqz v2, :cond_1

    iget-object v5, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    :cond_1
    invoke-virtual {v6, v3, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    .line 267
    const-string v5, "android:support:next_request_index"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 268
    const-string v5, "android:support:next_request_index"

    .line 269
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    .line 270
    const-string v5, "android:support:request_indicies"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 271
    .local v4, "requestCodes":[I
    const-string v5, "android:support:request_fragment_who"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "fragmentWhos":[Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    array-length v5, v4

    array-length v6, v0

    if-eq v5, v6, :cond_5

    .line 274
    :cond_2
    const-string v5, "SeslFragmentActivity"

    const-string v6, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "requestCodes":[I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    if-nez v5, :cond_4

    .line 285
    new-instance v5, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-direct {v5}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    .line 286
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    .line 289
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchCreate()V

    .line 290
    return-void

    .line 276
    .restart local v0    # "fragmentWhos":[Ljava/lang/String;
    .restart local v3    # "p":Landroid/os/Parcelable;
    .restart local v4    # "requestCodes":[I
    :cond_5
    new-instance v5, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    array-length v6, v4

    invoke-direct {v5, v6}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;-><init>(I)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    aget v6, v4, v1

    aget-object v7, v0, v1

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    .line 309
    .local v0, "show":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 312
    .end local v0    # "show":Z
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 294
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 295
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 297
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 299
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 327
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->doReallyStop(Z)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchDestroy()V

    .line 330
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderDestroy()V

    .line 331
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchLowMemory()V

    .line 340
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 347
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const/4 v0, 0x1

    .line 359
    :goto_0
    return v0

    .line 351
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 359
    const/4 v0, 0x0

    goto :goto_0

    .line 353
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 356
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchMultiWindowModeChanged(Z)V

    .line 222
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 403
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    .line 404
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 368
    packed-switch p1, :pswitch_data_0

    .line 373
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 374
    return-void

    .line 370
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onResumeFragments()V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPause()V

    .line 388
    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPictureInPictureModeChanged(Z)V

    .line 236
    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 435
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 436
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 437
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onResumeFragments()V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    .line 439
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 474
    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 456
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 457
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v1, :cond_0

    .line 458
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mOptionsMenuInvalidated:Z

    .line 459
    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    .line 460
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 462
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    .line 463
    .local v0, "goforit":Z
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v1, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 466
    .end local v0    # "goforit":Z
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    .prologue
    .line 745
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRetaining:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStop(Z)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchReallyStop()V

    .line 748
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const v4, 0xffff

    .line 866
    shr-int/lit8 v3, p1, 0x10

    and-int v1, v3, v4

    .line 867
    .local v1, "index":I
    if-eqz v1, :cond_0

    .line 868
    add-int/lit8 v1, v1, -0x1

    .line 870
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 871
    .local v2, "who":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v3, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->remove(I)V

    .line 872
    if-nez v2, :cond_1

    .line 873
    const-string v3, "SeslFragmentActivity"

    const-string v4, "Activity result delivered for unknown SeslFragment."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v2    # "who":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 876
    .restart local v2    # "who":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v3, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    .line 877
    .local v0, "frag":Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    if-nez v0, :cond_2

    .line 878
    const-string v3, "SeslFragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity result no fragment exists for who: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 880
    :cond_2
    and-int v3, p1, v4

    invoke-virtual {v0, v3, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 425
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mResumed:Z

    .line 427
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    .line 428
    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchResume()V

    .line 449
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 484
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    if-eqz v4, :cond_0

    .line 485
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->doReallyStop(Z)V

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 490
    .local v0, "custom":Ljava/lang/Object;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->retainNestedNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v1

    .line 491
    .local v1, "fragments":Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    move-result-object v2

    .line 493
    .local v2, "loaders":Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;, "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap<Ljava/lang/String;Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;>;"
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 494
    const/4 v3, 0x0

    .line 501
    :goto_0
    return-object v3

    .line 497
    :cond_1
    new-instance v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;

    invoke-direct {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;-><init>()V

    .line 498
    .local v3, "nci":Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;
    iput-object v0, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 499
    iput-object v1, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->fragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    .line 500
    iput-object v2, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity$NonConfigurationInstances;->loaders:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 509
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v2

    .line 511
    .local v2, "p":Landroid/os/Parcelable;
    if-eqz v2, :cond_0

    .line 512
    const-string v4, "android:support:fragments"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 514
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 515
    const-string v4, "android:support:next_request_index"

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 517
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 518
    .local v3, "requestCodes":[I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 519
    .local v0, "fragmentWhos":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 520
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 521
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mPendingFragmentActivityResults:Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;

    invoke-virtual {v4, v1}, Lcom/samsung/android/support/sesl/core/util/SeslSparseArrayCompat;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    :cond_1
    const-string v4, "android:support:request_indicies"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 524
    const-string v4, "android:support:request_fragment_who"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 526
    .end local v0    # "fragmentWhos":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "requestCodes":[I
    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 534
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 536
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    .line 537
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mReallyStopped:Z

    .line 538
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 540
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    if-nez v0, :cond_0

    .line 541
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mCreated:Z

    .line 542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchActivityCreated()V

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    .line 546
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->execPendingActions()Z

    .line 548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->doLoaderStart()V

    .line 552
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchStart()V

    .line 553
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->reportLoaderStart()V

    .line 554
    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->noteStateNotSaved()V

    .line 411
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 561
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 563
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStopped:Z

    .line 564
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 566
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mFragments:Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->dispatchStop()V

    .line 567
    return-void
.end method

.method requestPermissionsFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 962
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 963
    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 975
    :goto_0
    return-void

    .line 966
    :cond_0
    invoke-static {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 968
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 969
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->allocateRequestIndex(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)I

    move-result v0

    .line 970
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-static {p0, p2, v1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRequestedPermissionsFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRequestedPermissionsFromFragment:Z

    throw v1
.end method

.method public setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/SharedElementCallback;

    .prologue
    .line 207
    invoke-static {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    .line 208
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 786
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 787
    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 790
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 791
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 799
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 800
    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 803
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 804
    return-void
.end method

.method public startActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 891
    return-void
.end method

.method public startActivityFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 898
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    .line 900
    if-ne p3, v2, :cond_0

    .line 901
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p0, p2, v1, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    .line 911
    :goto_0
    return-void

    .line 904
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 905
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->allocateRequestIndex(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)I

    move-result v0

    .line 906
    .local v0, "requestIndex":I
    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p3

    add-int/2addr v1, v2

    invoke-virtual {p0, p2, v1, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    goto :goto_0

    .end local v0    # "requestIndex":I
    :catchall_0
    move-exception v1

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedActivityFromFragment:Z

    throw v1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 813
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 814
    invoke-static {p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 817
    :cond_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 819
    return-void
.end method

.method public startIntentSenderFromFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1, "fragment"    # Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .param p2, "intent"    # Landroid/content/IntentSender;
    .param p3, "requestCode"    # I
    .param p4, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "flagsMask"    # I
    .param p6, "flagsValues"    # I
    .param p7, "extraFlags"    # I
    .param p8, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 921
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    .line 922
    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedIntentSenderFromFragment:Z

    .line 934
    :goto_0
    return-void

    .line 926
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 927
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->allocateRequestIndex(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)I

    move-result v8

    .line 928
    .local v8, "requestIndex":I
    add-int/lit8 v0, v8, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 932
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedIntentSenderFromFragment:Z

    goto :goto_0

    .end local v8    # "requestIndex":I
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mStartedIntentSenderFromFragment:Z

    throw v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->invalidateOptionsMenu()V

    .line 603
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 840
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 842
    invoke-static {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->checkForValidRequestCode(I)V

    .line 844
    :cond_0
    return-void
.end method
