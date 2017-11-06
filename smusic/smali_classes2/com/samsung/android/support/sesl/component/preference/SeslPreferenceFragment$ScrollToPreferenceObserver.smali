.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;
.super Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;
.source "SeslPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private final mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .param p2, "list"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .param p3, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 761
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;-><init>()V

    .line 762
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    .line 763
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 764
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 765
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 766
    return-void
.end method

.method private scrollToPreference()V
    .locals 3

    .prologue
    .line 769
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V

    .line 771
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mPreference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 773
    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)I

    move-result v0

    .line 778
    .local v0, "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 781
    :cond_0
    return-void

    .line 775
    .end local v0    # "position":I
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 776
    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "position":I
    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 786
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 790
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 791
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 795
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 796
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 801
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 811
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 805
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 806
    return-void
.end method
