.class Lcom/samsung/android/settings/location/LocationUseInBackground$1;
.super Ljava/lang/Object;
.source "LocationUseInBackground.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 141
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$1;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$1;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-wrap0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "background_location_noti_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 145
    iget-object v0, p0, Lcom/samsung/android/settings/location/LocationUseInBackground$1;->this$0:Lcom/samsung/android/settings/location/LocationUseInBackground;

    invoke-static {v0}, Lcom/samsung/android/settings/location/LocationUseInBackground;->-get0(Lcom/samsung/android/settings/location/LocationUseInBackground;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 143
    return-void
.end method
