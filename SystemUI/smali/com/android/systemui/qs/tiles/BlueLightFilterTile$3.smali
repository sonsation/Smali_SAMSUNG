.class Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;
.super Lcom/android/systemui/qs/SystemSetting;
.source "BlueLightFilterTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/BlueLightFilterTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/BlueLightFilterTile;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Landroid/os/Handler;
    .param p4, "$anonymous2"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 4
    .param p1, "value"    # I
    .param p2, "observedChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 104
    invoke-static {}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DB_BLUE_LIGHT_FILTER changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BlueLightFilterTile$3;->this$0:Lcom/android/systemui/qs/tiles/BlueLightFilterTile;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/BlueLightFilterTile;->-wrap0(Lcom/android/systemui/qs/tiles/BlueLightFilterTile;Ljava/lang/Object;)V

    .line 103
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
