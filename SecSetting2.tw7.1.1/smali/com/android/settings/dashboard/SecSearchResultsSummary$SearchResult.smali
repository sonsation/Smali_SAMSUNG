.class public Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchResult"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public category_id:Ljava/lang/String;

.field public className:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public entries:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public iconResId:I

.field public key:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public menu_path:Ljava/lang/String;

.field public menu_type:I

.field public screenTitle:Ljava/lang/String;

.field public summaryOff:Ljava/lang/String;

.field public summaryOn:Ljava/lang/String;

.field public targetCls:Ljava/lang/String;

.field public targetPkg:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summaryOn"    # Ljava/lang/String;
    .param p4, "summaryOff"    # Ljava/lang/String;
    .param p5, "entries"    # Ljava/lang/String;
    .param p6, "keywords"    # Ljava/lang/String;
    .param p7, "iconResId"    # I
    .param p8, "key"    # Ljava/lang/String;
    .param p9, "targetPkg"    # Ljava/lang/String;
    .param p10, "targetCls"    # Ljava/lang/String;
    .param p11, "screenTitle"    # Ljava/lang/String;
    .param p12, "className"    # Ljava/lang/String;
    .param p13, "menu_type"    # I
    .param p14, "menu_path"    # Ljava/lang/String;
    .param p15, "category_id"    # Ljava/lang/String;
    .param p16, "action"    # Ljava/lang/String;
    .param p17, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 879
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->context:Landroid/content/Context;

    .line 880
    iput-object p2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    .line 881
    iput-object p3, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    .line 882
    iput-object p4, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOff:Ljava/lang/String;

    .line 883
    iput-object p5, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->entries:Ljava/lang/String;

    .line 884
    iput-object p6, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->keywords:Ljava/lang/String;

    .line 885
    iput p7, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    .line 886
    iput-object p8, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 888
    iput-object p9, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    .line 889
    iput-object p10, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    .line 890
    iput-object p11, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->screenTitle:Ljava/lang/String;

    .line 891
    iput-object p12, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    .line 892
    iput p13, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    .line 893
    iput-object p14, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    .line 894
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->category_id:Ljava/lang/String;

    .line 895
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->action:Ljava/lang/String;

    .line 896
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->extras:Landroid/os/Bundle;

    .line 878
    return-void
.end method
