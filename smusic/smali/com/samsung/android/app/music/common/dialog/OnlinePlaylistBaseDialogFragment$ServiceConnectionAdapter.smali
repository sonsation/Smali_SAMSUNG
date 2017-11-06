.class Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;
.super Ljava/lang/Object;
.source "OnlinePlaylistBaseDialogFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;->this$0:Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$1;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment$ServiceConnectionAdapter;-><init>(Lcom/samsung/android/app/music/common/dialog/OnlinePlaylistBaseDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 115
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 120
    return-void
.end method
