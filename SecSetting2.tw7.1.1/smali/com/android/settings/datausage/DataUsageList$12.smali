.class Lcom/android/settings/datausage/DataUsageList$12;
.super Ljava/lang/Object;
.source "DataUsageList.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageList;->bindStats(Landroid/net/NetworkStats;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageList;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/datausage/DataUsageList;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList$12;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    move-object v1, p1

    .line 561
    check-cast v1, Lcom/android/settings/datausage/AppDataUsagePreference;

    .line 562
    .local v1, "pref":Lcom/android/settings/datausage/AppDataUsagePreference;
    invoke-virtual {v1}, Lcom/android/settings/datausage/AppDataUsagePreference;->getItem()Lcom/android/settingslib/AppItem;

    move-result-object v0

    .line 563
    .local v0, "item":Lcom/android/settingslib/AppItem;
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList$12;->this$0:Lcom/android/settings/datausage/DataUsageList;

    invoke-static {v2, v0}, Lcom/android/settings/datausage/DataUsageList;->-wrap4(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V

    .line 564
    const/4 v2, 0x1

    return v2
.end method
