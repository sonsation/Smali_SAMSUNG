.class Lcom/samsung/android/settings/DockSettings$4;
.super Ljava/lang/Object;
.source "DockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/DockSettings;->createDownloadLEDCoverFeaturePopup()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DockSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/DockSettings;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/samsung/android/settings/DockSettings$4;->this$0:Lcom/samsung/android/settings/DockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 396
    return-void
.end method
