.class Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;
.super Ljava/lang/Object;
.source "WifiAdvancedSecSetupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$5;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 349
    return-void
.end method
