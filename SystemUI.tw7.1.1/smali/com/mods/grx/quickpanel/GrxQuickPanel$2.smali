.class Lcom/mods/grx/quickpanel/GrxQuickPanel$2;
.super Ljava/lang/Object;
.source "GrxQuickPanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$2;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/mods/grx/quickpanel/GrxQuickPanel$2;->this$0:Lcom/mods/grx/quickpanel/GrxQuickPanel;

    invoke-static {v0}, Lcom/mods/grx/quickpanel/GrxQuickPanel;->access$100(Lcom/mods/grx/quickpanel/GrxQuickPanel;)V

    const/4 v0, 0x1

    return v0
.end method
