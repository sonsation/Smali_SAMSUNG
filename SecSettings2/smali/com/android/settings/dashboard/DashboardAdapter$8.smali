.class Lcom/android/settings/dashboard/DashboardAdapter$8;
.super Ljava/lang/Object;
.source "DashboardAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/DashboardAdapter;->showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/dashboard/DashboardAdapter;

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter$8;->this$0:Lcom/android/settings/dashboard/DashboardAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 948
    return-void
.end method
