.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;
.super Ljava/lang/Object;
.source "SeslPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->scrollToPreferenceInternal(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$preference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 719
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v0

    .line 720
    .local v0, "adapter":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    instance-of v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;

    if-nez v2, :cond_0

    .line 722
    if-eqz v0, :cond_1

    .line 723
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Adapter must implement PreferencePositionCallback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 731
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$preference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 732
    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$preference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .line 733
    invoke-interface {v2, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)I

    move-result v1

    .line 738
    .local v1, "position":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 739
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->scrollToPosition(I)V

    .line 745
    .end local v1    # "position":I
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v2, v0

    .line 735
    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$key:Ljava/lang/String;

    .line 736
    invoke-interface {v2, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v1

    .restart local v1    # "position":I
    goto :goto_0

    .line 742
    :cond_3
    new-instance v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .line 743
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$preference:Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;->val$key:Ljava/lang/String;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V

    .line 742
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->registerAdapterDataObserver(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$AdapterDataObserver;)V

    goto :goto_1
.end method
