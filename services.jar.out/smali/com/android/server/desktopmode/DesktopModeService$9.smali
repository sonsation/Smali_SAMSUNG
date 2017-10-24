.class Lcom/android/server/desktopmode/DesktopModeService$9;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/desktopmode/DesktopModeService;

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1186
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1187
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "hdmi"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 1189
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    .line 1185
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "hdmi"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap13(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;I)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap9(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    .line 1194
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_mirror"

    invoke-static {v0, v1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap0(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v1, "1st_mirror"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap12(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    .line 1196
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$9;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto :goto_0
.end method
