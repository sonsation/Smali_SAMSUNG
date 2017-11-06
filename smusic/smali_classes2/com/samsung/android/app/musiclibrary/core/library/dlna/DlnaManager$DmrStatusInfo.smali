.class public Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;
.super Ljava/lang/Object;
.source "DlnaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DmrStatusInfo"
.end annotation


# instance fields
.field public deviceName:Ljava/lang/String;

.field public iconUri:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public ipAddress:Ljava/lang/String;

.field public nic:Ljava/lang/String;

.field public p2pMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "ipAddress"    # Ljava/lang/String;
    .param p4, "p2pMacAddress"    # Ljava/lang/String;
    .param p5, "nic"    # Ljava/lang/String;
    .param p6, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 681
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->id:Ljava/lang/String;

    .line 682
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->deviceName:Ljava/lang/String;

    .line 683
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->ipAddress:Ljava/lang/String;

    .line 684
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->p2pMacAddress:Ljava/lang/String;

    .line 685
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->nic:Ljava/lang/String;

    .line 686
    if-nez p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$DmrStatusInfo;->iconUri:Ljava/lang/String;

    .line 687
    return-void

    .line 686
    :cond_0
    invoke-virtual {p6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
