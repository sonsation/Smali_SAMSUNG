.class Lcom/android/systemui/qs/external/TileServices$5;
.super Ljava/lang/Object;
.source "TileServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/external/TileServices;->onShowDialog(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServices;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/TileServices;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServices$5;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServices$5;->this$0:Lcom/android/systemui/qs/external/TileServices;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServices;->-get1(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 229
    return-void
.end method
