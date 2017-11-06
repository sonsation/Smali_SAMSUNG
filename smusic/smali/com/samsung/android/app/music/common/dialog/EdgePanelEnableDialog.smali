.class public Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;
.super Landroid/app/DialogFragment;
.source "EdgePanelEnableDialog.java"


# static fields
.field public static final ACTION_EDGE_PANELS_SETTINGS:Ljava/lang/String; = "intent.action.EDGE_PANELS"

.field public static final EXTRA_EDGE_PANELS_NAME:Ljava/lang/String; = "EdgePanels"

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->dismiss()V

    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 70
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 27
    sget-object v3, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onCreateDialog() "

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "appName":Ljava/lang/String;
    const v3, 0x7f0a00b3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    const v3, 0x7f0a00b2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    const v3, 0x7f0a008a

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$1;-><init>(Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v3, 0x7f0a01ab

    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog$2;-><init>(Lcom/samsung/android/app/music/common/dialog/EdgePanelEnableDialog;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 62
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 63
    return-object v2
.end method
