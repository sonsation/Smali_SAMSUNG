.class public Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirewallAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;
    }
.end annotation


# instance fields
.field private mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDualAppProfileId:I

.field private mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "applicationNetInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    .line 60
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    .line 61
    .local v0, "sdam":Lcom/samsung/android/app/SemDualAppManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mDualAppProfileId:I

    .line 63
    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mDualAppProfileId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUserHandle:Landroid/os/UserHandle;

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    .line 57
    return-void
.end method

.method private setSameUidApp(IIZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "type"    # I
    .param p3, "checked"    # Z

    .prologue
    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 212
    if-nez p2, :cond_1

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 210
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 209
    return-void
.end method


# virtual methods
.method public bindDataStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "uidDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public bindWifiStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "uidWifiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    .line 78
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    .line 76
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 103
    const/4 v4, 0x0

    .line 104
    .local v4, "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    if-nez p2, :cond_0

    .line 105
    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;

    .end local v4    # "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7, p0}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;)V

    .line 106
    .local v4, "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f0401b5

    invoke-virtual {v7, v8, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    const v7, 0x7f1100e5

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    .line 109
    const v7, 0x7f1102a6

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    .line 110
    const v7, 0x7f11027f

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    .line 111
    const v7, 0x7f1105ad

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    .line 112
    iget-object v8, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    .line 113
    const v7, 0x7f1102a7

    .line 112
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    aput-object v7, v8, v10

    .line 114
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v7, v7, v10

    .line 115
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 114
    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v8, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    .line 117
    const v7, 0x7f1105ac

    .line 116
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    aput-object v7, v8, v9

    .line 118
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v7, v7, v9

    .line 119
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 118
    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    :goto_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v7, 0x2

    if-ge v5, v7, :cond_1

    .line 125
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v7, v7, v5

    invoke-virtual {v7, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 122
    .end local v5    # "i":I
    .local v4, "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;

    .local v4, "holder":Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;
    goto :goto_0

    .line 127
    .restart local v5    # "i":I
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    .line 128
    .local v2, "appNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v7

    const/16 v8, 0x4e1f

    if-le v7, v8, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v7, :cond_2

    .line 132
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    iget v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mDualAppProfileId:I

    const/16 v9, 0x80

    invoke-virtual {v7, v6, v9, v8}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 133
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 134
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0    # "appIcon":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    iget-object v8, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0ee2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v8, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 145
    iget-object v8, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0ee3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ": "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    :goto_4
    iget-object v8, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setPosition(I)V

    .line 151
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setCheckBox(IZ)V

    .line 152
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v7}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setCheckBox(IZ)V

    .line 156
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_5
    return-object p2

    .line 136
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 137
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 153
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    .line 142
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :try_start_1
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0ee2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 147
    :cond_4
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0ee3

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "0B"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public onChecked(IIZ)V
    .locals 7
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "isChecked"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 161
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    .line 162
    .local v0, "appicationNetInfo":Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;
    if-nez p2, :cond_6

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eq v3, p3, :cond_3

    .line 164
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    .line 165
    sget-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 168
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v2, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    .line 173
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 174
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v1    # "i":I
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_0

    .line 177
    :cond_1
    if-eqz p3, :cond_4

    .line 178
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 179
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 180
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v3, v6}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    .line 160
    :cond_3
    :goto_3
    return-void

    .line 183
    :cond_4
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    .line 184
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 185
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    :cond_5
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 191
    :cond_6
    if-ne p2, v5, :cond_3

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v3

    if-eq v3, p3, :cond_3

    .line 193
    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    .line 194
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    .line 195
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    .line 197
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .restart local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    .line 200
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 201
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 204
    .end local v1    # "i":I
    .end local v2    # "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v3, v5}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    goto/16 :goto_3
.end method

.method public setApplicationNetInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "applicationNetInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;>;"
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setItemCheckBoxListener(Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    .line 222
    return-void
.end method
