.class Lcom/samsung/android/settings/location/LocationUseInBackground$3;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/location/LocationUseInBackground;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/location/LocationUseInBackground;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/location/LocationUseInBackground;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$3;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$3;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-get0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 151
    return-void
.end method
