.class Lcom/mods/grx/quickpanel/GrxQuickPanel$1;
.super Ljava/lang/Object;
.source "GrxQuickPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mods/grx/quickpanel/GrxQuickPanel;->new_edit_button()Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;


# direct methods
.method constructor <init>(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.mods.grx.settings"

    const-string v3, "com.mods.grx.settings.GrxSettingsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GrxScreen"

    const-string v3, "gp_quick_panel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GrxSubScreen"

    const-string v3, "gp_quick_panel"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "GrxKey"

    const-string v3, "b_qp_shortcuts"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-static {v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$000(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-virtual {v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$1;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-virtual {v2}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
