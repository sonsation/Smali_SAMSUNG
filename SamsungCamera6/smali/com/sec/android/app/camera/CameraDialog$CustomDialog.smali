.class Lcom/sec/android/app/camera/CameraDialog$CustomDialog;
.super Landroid/app/AlertDialog$Builder;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomDialog"
.end annotation


# instance fields
.field private mKeyId:I

.field private mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->this$0:Lcom/sec/android/app/camera/CameraDialog;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mKeyId:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public setKeyId(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mKeyId:I

    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$1;-><init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$2;-><init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$3;-><init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 1

    iput-object p2, p0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraDialog$CustomDialog$4;-><init>(Lcom/sec/android/app/camera/CameraDialog$CustomDialog;)V

    invoke-super {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method
