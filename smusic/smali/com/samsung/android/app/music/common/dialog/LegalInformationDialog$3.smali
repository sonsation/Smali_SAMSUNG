.class Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$3;
.super Ljava/lang/Object;
.source "LegalInformationDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->initMandatoryAgreements(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$3;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog$3;->this$0:Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;->access$100(Lcom/samsung/android/app/music/common/dialog/LegalInformationDialog;)V

    .line 184
    return-void
.end method
