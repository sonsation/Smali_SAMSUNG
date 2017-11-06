.class Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;
.super Ljava/lang/Object;
.source "EdgeLightingNotificationEffect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-static {}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect$1;->this$0:Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;

    invoke-static {v0}, Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;->access$100(Lcom/samsung/android/edgelighting/view/EdgeLightingNotificationEffect;)V

    .line 120
    return-void
.end method
