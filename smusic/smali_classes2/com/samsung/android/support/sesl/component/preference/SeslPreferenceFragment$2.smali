.class Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SeslPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 163
    return-void
.end method
