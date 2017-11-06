.class Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "SeslMultiSelectListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 107
    if-eqz p3, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$000(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .line 109
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$100(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$002(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;Z)Z

    .line 114
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$000(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$200(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    .line 112
    invoke-static {v3}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$100(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;)[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->access$002(Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;Z)Z

    goto :goto_0
.end method
