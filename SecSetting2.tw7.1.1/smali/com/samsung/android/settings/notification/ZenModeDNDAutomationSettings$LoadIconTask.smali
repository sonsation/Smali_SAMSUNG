.class Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final prefReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 433
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    .line 432
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "params"    # [Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 438
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->-get1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 437
    check-cast p1, [Landroid/content/pm/ApplicationInfo;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->doInBackground([Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->prefReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 445
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 442
    .end local v0    # "pref":Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/Object;

    .prologue
    .line 442
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1    # "icon":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
