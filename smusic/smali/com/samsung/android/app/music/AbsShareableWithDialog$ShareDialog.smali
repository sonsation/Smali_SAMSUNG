.class public Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
.super Landroid/app/DialogFragment;
.source "AbsShareableWithDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/AbsShareableWithDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareDialog"
.end annotation


# static fields
.field private static final ARGS_BIXBY_CROSS_SHARE_PKG:Ljava/lang/String; = "args_bixbyCrossSharePackages"

.field private static final ARGS_IDS:Ljava/lang/String; = "args_ids"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mShareableWithDialog:Lcom/samsung/android/app/music/AbsShareableWithDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    const-class v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;)Lcom/samsung/android/app/music/AbsShareableWithDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->mShareableWithDialog:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    return-object v0
.end method

.method public static newInstance([JLjava/lang/String;)Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
    .locals 3
    .param p0, "ids"    # [J
    .param p1, "bixbyCrossSharePackages"    # Ljava/lang/String;

    .prologue
    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "args_ids"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 240
    const-string v2, "args_bixbyCrossSharePackages"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v1, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;

    invoke-direct {v1}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;-><init>()V

    .line 242
    .local v1, "fg":Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->setArguments(Landroid/os/Bundle;)V

    .line 243
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 250
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00cf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 252
    const v2, 0x7f0a00d0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 253
    const v2, 0x7f0a0092

    new-instance v3, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog$1;-><init>(Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 271
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setShareableWithDialog(Lcom/samsung/android/app/music/AbsShareableWithDialog;)V
    .locals 0
    .param p1, "shareableWithDialog"    # Lcom/samsung/android/app/music/AbsShareableWithDialog;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/android/app/music/AbsShareableWithDialog$ShareDialog;->mShareableWithDialog:Lcom/samsung/android/app/music/AbsShareableWithDialog;

    .line 276
    return-void
.end method
