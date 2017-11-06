.class Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;
.super Ljava/lang/Object;
.source "SeslListPreferenceDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->onPrepareDialogBuilder(Lcom/samsung/android/support/sesl/component/app/SeslAlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->access$002(Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;I)I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment$1;->this$0:Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 93
    return-void
.end method
