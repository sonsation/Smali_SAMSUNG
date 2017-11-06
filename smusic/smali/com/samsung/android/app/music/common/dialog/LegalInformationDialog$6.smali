.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initText(Landroid/widget/TextView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

.field final synthetic val$linkUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;->val$linkUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;->val$linkUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$6;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->startActivity(Landroid/content/Intent;)V

    .line 262
    return-void
.end method
