.class Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;
.super Ljava/lang/Object;
.source "StatusVZW.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 901
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 902
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.IMEIBarcodeDisplayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 903
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;->this$0:Lcom/samsung/android/settings/deviceinfo/StatusVZW;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->startActivity(Landroid/content/Intent;)V

    .line 904
    const/4 v1, 0x1

    return v1
.end method
