.class public Lcom/android/settings/deviceinfo/PrivateVolumeFormat;
.super Lcom/android/settings/InstrumentedFragment;
.source "PrivateVolumeFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;
    }
.end annotation


# instance fields
.field private final mConfirmListener:Landroid/view/View$OnClickListener;

.field private mDisk:Landroid/os/storage/DiskInfo;

.field private mVolume:Landroid/os/storage/VolumeInfo;


# direct methods
.method static synthetic -get0(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/DiskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)Landroid/os/storage/VolumeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat$1;-><init>(Lcom/android/settings/deviceinfo/PrivateVolumeFormat;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    .line 36
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x2a

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 49
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "android.os.storage.extra.VOLUME_ID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "volumeId":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    .line 51
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mVolume:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    .line 53
    const v5, 0x7f040302

    invoke-virtual {p1, v5, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 54
    .local v3, "view":Landroid/view/View;
    const v5, 0x7f1107cb

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 55
    .local v0, "body":Landroid/widget/TextView;
    const v5, 0x7f1107cc

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 60
    .local v1, "confirm":Landroid/widget/Button;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mDisk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v6}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const v6, 0x7f0b170f

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PrivateVolumeFormat;->mConfirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-object v3
.end method