.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 479
    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$6;->this$0:Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;->onBackPressed()V

    .line 477
    return-void
.end method
