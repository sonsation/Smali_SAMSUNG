.class Lcom/samsung/android/settings/fmm/SimChangeAlert$6;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/fmm/SimChangeAlert;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-set1(I)I

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v2}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-get1()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 286
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "intent.action.INTERACTION_TAB"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v1, "phonebookIntent":Landroid/content/Intent;
    const-string/jumbo v2, "additional"

    const-string/jumbo v3, "phone-multi"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    const-string/jumbo v2, "existingRecipientCount"

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-get3(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string/jumbo v2, "maxRecipientCount"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 290
    iget-object v2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$6;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    const/16 v3, 0x65

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    .end local v1    # "phonebookIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
