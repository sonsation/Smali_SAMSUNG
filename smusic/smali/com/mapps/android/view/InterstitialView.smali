.class public Lcom/mapps/android/view/InterstitialView;
.super Landroid/app/Activity;
.source "InterstitialView.java"

# interfaces
.implements Lcom/mapps/android/share/AdInfoKey;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;
    }
.end annotation


# static fields
.field public static SAVEREQUESTKEY:Ljava/lang/String;


# instance fields
.field private FinishReceiver:Landroid/content/BroadcastReceiver;

.field private final GAP_SIZE:I

.field private a_media:Ljava/lang/String;

.field private a_publisher:Ljava/lang/String;

.field private a_section:Ljava/lang/String;

.field private bExist:Z

.field private bNext:Z

.field private bTNext:Z

.field private btn_close:Landroid/widget/ImageView;

.field private btn_next:Landroid/widget/ImageView;

.field private btn_prev:Landroid/widget/ImageView;

.field private c_type:I

.field private h:I

.field private imageView:Landroid/widget/ImageView;

.field private isLandingGo:Z

.field private mAdBitmap:Landroid/graphics/Bitmap;

.field public m_fFirstX:F

.field public m_fFirstY:F

.field private mediaType:I

.field private myWebView:Landroid/webkit/WebView;

.field private nt:Lcom/mezzo/common/network/Nt;

.field private progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

.field private resID_slide_in_left:I

.field private resID_slide_in_right:I

.field private resID_slide_out_left:I

.field private resID_slide_out_right:I

.field showViewHandler:Landroid/os/Handler;

.field private sspData:Lcom/mezzo/common/network/data/DataNTSSP;

.field private viewInfo:Ljava/lang/String;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    .line 68
    iput v0, p0, Lcom/mapps/android/view/InterstitialView;->m_fFirstX:F

    .line 69
    iput v0, p0, Lcom/mapps/android/view/InterstitialView;->m_fFirstY:F

    .line 71
    const/16 v0, 0x32

    iput v0, p0, Lcom/mapps/android/view/InterstitialView;->GAP_SIZE:I

    .line 72
    iput-boolean v2, p0, Lcom/mapps/android/view/InterstitialView;->bNext:Z

    .line 73
    iput-boolean v2, p0, Lcom/mapps/android/view/InterstitialView;->bTNext:Z

    .line 81
    iput-boolean v1, p0, Lcom/mapps/android/view/InterstitialView;->bExist:Z

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->a_publisher:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->a_media:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->a_section:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    .line 87
    iput v1, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    .line 89
    iput-boolean v1, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 286
    new-instance v0, Lcom/mapps/android/view/InterstitialView$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$1;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->showViewHandler:Landroid/os/Handler;

    .line 732
    new-instance v0, Lcom/mapps/android/view/InterstitialView$2;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$2;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    .line 820
    new-instance v0, Lcom/mapps/android/view/InterstitialView$3;

    invoke-direct {v0, p0}, Lcom/mapps/android/view/InterstitialView$3;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 65
    return-void
.end method

.method private Interstital_Close()V
    .locals 3

    .prologue
    .line 727
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.FLICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "opr_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private StartBrowserAdvertise(Ljava/lang/String;)V
    .locals 22
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 761
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/InterstitialView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.android.browser"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 763
    .local v6, "bintent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 764
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/mapps/android/view/InterstitialView;->requestBrowser(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/InterstitialView;->startActivity(Landroid/content/Intent;)V

    .line 816
    .end local v6    # "bintent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 767
    .restart local v6    # "bintent":Landroid/content/Intent;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/InterstitialView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const-string v20, "com.android.chrome"

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 768
    if-eqz v6, :cond_2

    .line 769
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v6, v1}, Lcom/mapps/android/view/InterstitialView;->requestBrowser(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mapps/android/view/InterstitialView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 772
    :cond_2
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 773
    .local v14, "map":Ljava/util/Map;
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/InterstitialView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 774
    .local v15, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->requestBrowser(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 776
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 777
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_5

    .line 793
    :cond_3
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v19

    if-lez v19, :cond_0

    .line 794
    invoke-static {v14}, Lcom/mapps/android/view/InterstitialView;->sortByValue(Ljava/util/Map;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 795
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 796
    .local v9, "key":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_4

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/mapps/android/view/InterstitialView;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    .line 798
    .local v12, "launchIntent":Landroid/content/Intent;
    if-eqz v12, :cond_4

    .line 799
    const-string v19, "android.intent.action.VIEW"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 800
    const-string v19, "android.intent.category.BROWSABLE"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 801
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 802
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 803
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/mapps/android/view/InterstitialView;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 777
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "launchIntent":Landroid/content/Intent;
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/ResolveInfo;

    .line 778
    .local v17, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 781
    .local v16, "pkgName":Ljava/lang/String;
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 782
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 783
    .local v4, "appFile":Ljava/lang/String;
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 786
    .local v10, "installed":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 787
    .end local v4    # "appFile":Ljava/lang/String;
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "installed":J
    :catch_0
    move-exception v7

    .line 788
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide v20, 0x7fffffffffffffffL

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method static synthetic access$0(Lcom/mapps/android/view/InterstitialView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mapps/android/view/InterstitialView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$10(Lcom/mapps/android/view/InterstitialView;Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    return-void
.end method

.method static synthetic access$11(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 835
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->requestSSPClick()V

    return-void
.end method

.method static synthetic access$2(Lcom/mapps/android/view/InterstitialView;)Lcom/mezzo/common/network/data/DataNTSSP;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    return-object v0
.end method

.method static synthetic access$3(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 320
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->sspLanding()V

    return-void
.end method

.method static synthetic access$4(Lcom/mapps/android/view/InterstitialView;)V
    .locals 0

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->unregisterFinishReceiver()V

    return-void
.end method

.method static synthetic access$5(Lcom/mapps/android/view/InterstitialView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    return v0
.end method

.method static synthetic access$6(Lcom/mapps/android/view/InterstitialView;I)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0, p1}, Lcom/mapps/android/view/InterstitialView;->sendFlickerEvent(I)V

    return-void
.end method

.method static synthetic access$7(Lcom/mapps/android/view/InterstitialView;Z)V
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mapps/android/view/InterstitialView;->bTNext:Z

    return-void
.end method

.method static synthetic access$8(Lcom/mapps/android/view/InterstitialView;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mapps/android/view/InterstitialView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mapps/android/view/InterstitialView;->mAdBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private addImageView(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0
    .param p1, "root"    # Landroid/widget/RelativeLayout;
    .param p2, "targetView"    # Landroid/widget/ImageView;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "lp"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 410
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 412
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 413
    return-void
.end method

.method private buttonRemove(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "btn"    # Landroid/widget/ImageView;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    invoke-static {p1}, Lcom/mapps/android/view/InterstitialView;->recycleBitmap(Landroid/widget/ImageView;)V

    .line 470
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    :cond_0
    return-void
.end method

.method private createBtn(Landroid/widget/RelativeLayout;)V
    .locals 13
    .param p1, "root"    # Landroid/widget/RelativeLayout;

    .prologue
    const/16 v7, 0xf

    const/16 v1, 0xb

    const/16 v12, 0x8

    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 208
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    .line 209
    iget-object v8, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getCloseImage()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v2, 0x6

    move-object v0, p0

    move v5, v4

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v8, v9, v0}, Lcom/mapps/android/view/InterstitialView;->addImageView(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 211
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_prev:Landroid/widget/ImageView;

    .line 212
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_prev:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Lcom/mapps/android/view/InterstitialView;->getNextImage(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v6, 0x9

    move-object v5, p0

    move v8, v4

    move v9, v3

    move v10, v3

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    invoke-direct {p0, p1, v0, v2, v5}, Lcom/mapps/android/view/InterstitialView;->addImageView(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 214
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_next:Landroid/widget/ImageView;

    .line 215
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_next:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mapps/android/view/InterstitialView;->getNextImage(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, p0

    move v6, v1

    move v8, v3

    move v9, v3

    move v10, v4

    move v11, v4

    invoke-direct/range {v5 .. v11}, Lcom/mapps/android/view/InterstitialView;->createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/mapps/android/view/InterstitialView;->addImageView(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 217
    invoke-virtual {p0, p1}, Lcom/mapps/android/view/InterstitialView;->setContentView(Landroid/view/View;)V

    .line 219
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_prev:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_next:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$4;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$4;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_prev:Landroid/widget/ImageView;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$5;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$5;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_next:Landroid/widget/ImageView;

    new-instance v1, Lcom/mapps/android/view/InterstitialView$6;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$6;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method private createImageViewLayout(IIIIII)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2
    .param p1, "verb1"    # I
    .param p2, "verb2"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v1, -0x2

    .line 402
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 403
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 404
    invoke-virtual {v0, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 405
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    return-object v0
.end method

.method private getdp(I)I
    .locals 6
    .param p1, "base"    # I

    .prologue
    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "height":I
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 201
    .local v0, "density":I
    int-to-float v4, v0

    const/high16 v5, 0x43200000    # 160.0f

    div-float v3, v4, v5

    .line 202
    .local v3, "rate":F
    int-to-float v4, p1

    mul-float v1, v4, v3

    .line 203
    .local v1, "fcal":F
    float-to-int v2, v1

    .line 204
    return v2
.end method

.method private htmlTypeSetting(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "root"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v1, -0x1

    .line 349
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 350
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    .line 351
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 353
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/mapps/android/view/InterstitialView$9;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/InterstitialView$9;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 394
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mapps/android/view/InterstitialView;->LoadingURL(Ljava/lang/String;Z)V

    .line 399
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    goto :goto_0
.end method

.method private imageTypeSetting(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "root"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v1, -0x1

    .line 260
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    .line 262
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 263
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 265
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/InterstitialView$7;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/InterstitialView$7;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 284
    return-void
.end method

.method private static recycleBitmap(Landroid/widget/ImageView;)V
    .locals 3
    .param p0, "iv"    # Landroid/widget/ImageView;

    .prologue
    .line 492
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 493
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 494
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 495
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 499
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 502
    :cond_1
    return-void
.end method

.method private registerFinishReceiver()V
    .locals 2

    .prologue
    .line 743
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mapps.android.action.FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 744
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/InterstitialView;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 745
    return-void
.end method

.method private requestAssetImage(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "bnext"    # Z
    .param p2, "next"    # Ljava/lang/String;
    .param p3, "prev"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 718
    .local v0, "asset":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    .line 719
    .local v1, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_0

    .line 720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 723
    :goto_0
    return-object v1

    .line 722
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method private requestBrowser(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 753
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 756
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 757
    return-object p1
.end method

.method private requestSSPClick()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 836
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v3, :cond_0

    .line 837
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, ""

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 838
    sget-object v3, Lcom/mezzo/common/network/data/DataNTSSP$SSPCLICK;->YES:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getChk_ssp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 839
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 840
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "i_request_key"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "request_key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SAVEREQUESTKEY -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "request_key -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 844
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 845
    sget-object v3, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 846
    new-instance v3, Lcom/mezzo/common/network/Nt;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4, v5, v5}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v3, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    .line 847
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 848
    new-instance v0, Lcom/mezzo/common/network/request/RequestSimple;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 849
    .local v0, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v3, Lcom/mapps/android/view/InterstitialView$11;

    invoke-direct {v3, p0, v1}, Lcom/mapps/android/view/InterstitialView$11;-><init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 867
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 876
    .end local v0    # "imp":Lcom/mezzo/common/network/request/RequestSimple;
    .end local v1    # "request_key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 869
    .restart local v1    # "request_key":Ljava/lang/String;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : \uc774\ubbf8 \ubcf4\ub0c8\uc74c \uc548\ubcf4\ub0c4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 873
    .end local v1    # "request_key":Ljava/lang/String;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sendapi -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_click()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : \uc774\ubbf8 \ubcf4\ub0c8\uc74c \uc548\ubcf4\ub0c4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resize()V
    .locals 13

    .prologue
    const/16 v12, 0x14

    .line 159
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 160
    .local v2, "disp":Landroid/util/DisplayMetrics;
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v10

    .line 161
    .local v1, "deviceW":F
    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v10

    .line 162
    .local v0, "deviceH":F
    iget v10, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v12}, Lcom/mapps/android/view/InterstitialView;->getdp(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v7, v10

    .line 163
    .local v7, "realDeviceW":F
    iget v10, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {p0, v12}, Lcom/mapps/android/view/InterstitialView;->getdp(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v6, v10

    .line 164
    .local v6, "realDdeviceH":F
    iget v10, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    if-lez v10, :cond_4

    iget v10, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    if-lez v10, :cond_4

    .line 165
    iget v10, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    invoke-direct {p0, v10}, Lcom/mapps/android/view/InterstitialView;->getdp(I)I

    move-result v10

    int-to-float v4, v10

    .line 166
    .local v4, "dpW":F
    iget v10, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    invoke-direct {p0, v10}, Lcom/mapps/android/view/InterstitialView;->getdp(I)I

    move-result v10

    int-to-float v3, v10

    .line 167
    .local v3, "dpH":F
    const/4 v9, 0x0

    .line 168
    .local v9, "realW":I
    const/4 v8, 0x0

    .line 169
    .local v8, "realH":I
    cmpl-float v10, v4, v1

    if-lez v10, :cond_1

    cmpl-float v10, v3, v0

    if-lez v10, :cond_1

    .line 170
    float-to-int v9, v7

    .line 171
    div-float v5, v7, v4

    .line 172
    .local v5, "gap":F
    mul-float v10, v5, v3

    float-to-int v8, v10

    .line 173
    int-to-float v10, v8

    cmpl-float v10, v10, v6

    if-lez v10, :cond_0

    .line 174
    int-to-float v10, v8

    div-float v5, v6, v10

    .line 175
    float-to-int v8, v6

    .line 176
    int-to-float v10, v9

    mul-float/2addr v10, v5

    float-to-int v9, v10

    .line 190
    .end local v5    # "gap":F
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iput v9, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 191
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    iput v8, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 196
    .end local v3    # "dpH":F
    .end local v4    # "dpW":F
    .end local v8    # "realH":I
    .end local v9    # "realW":I
    :goto_1
    return-void

    .line 178
    .restart local v3    # "dpH":F
    .restart local v4    # "dpW":F
    .restart local v8    # "realH":I
    .restart local v9    # "realW":I
    :cond_1
    cmpl-float v10, v4, v1

    if-lez v10, :cond_2

    cmpg-float v10, v3, v0

    if-gtz v10, :cond_2

    .line 179
    float-to-int v9, v7

    .line 180
    div-float v5, v7, v4

    .line 181
    .restart local v5    # "gap":F
    mul-float v10, v5, v3

    float-to-int v8, v10

    .line 182
    goto :goto_0

    .end local v5    # "gap":F
    :cond_2
    cmpg-float v10, v4, v1

    if-gtz v10, :cond_3

    cmpl-float v10, v3, v0

    if-lez v10, :cond_3

    .line 183
    float-to-int v8, v6

    .line 184
    div-float v5, v6, v3

    .line 185
    .restart local v5    # "gap":F
    mul-float v10, v5, v4

    float-to-int v9, v10

    .line 186
    goto :goto_0

    .line 187
    .end local v5    # "gap":F
    :cond_3
    float-to-int v9, v7

    .line 188
    float-to-int v8, v6

    goto :goto_0

    .line 193
    .end local v3    # "dpH":F
    .end local v4    # "dpW":F
    .end local v8    # "realH":I
    .end local v9    # "realW":I
    :cond_4
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    float-to-int v11, v1

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    float-to-int v11, v0

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1
.end method

.method private sendFlickerEvent(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mapps.android.action.FLICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "opr_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendBroadcast(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public static sortByValue(Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .param p0, "m"    # Ljava/util/Map;

    .prologue
    .line 904
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v0, "keys":Ljava/util/List;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 906
    new-instance v1, Lcom/mapps/android/view/InterstitialView$13;

    invoke-direct {v1, p0}, Lcom/mapps/android/view/InterstitialView$13;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 919
    return-object v0
.end method

.method private sspLanding()V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getLanding_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 324
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->requestSSPClick()V

    .line 325
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v2}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 327
    .local v0, "message":Landroid/os/Message;
    const-string v1, "Dsp_click"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 328
    iget-object v1, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v1}, Lcom/mezzo/common/network/data/DataNTSSP;->getDsp_click()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 330
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/view/InterstitialView$8;

    invoke-direct {v2, p0}, Lcom/mapps/android/view/InterstitialView$8;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    .line 343
    const-string v3, "TouchThread"

    .line 330
    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 346
    :cond_1
    return-void
.end method

.method private unregisterFinishReceiver()V
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mapps/android/view/InterstitialView;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    .line 750
    return-void
.end method


# virtual methods
.method public LoadingURL(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "strURL"    # Ljava/lang/String;
    .param p2, "bType"    # Z

    .prologue
    const/4 v4, 0x1

    .line 516
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->clearView()V

    .line 517
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 518
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 519
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 520
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 521
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 522
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$ZoomDensity;->FAR:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 523
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 526
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 527
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 528
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/mapps/android/view/InterstitialView$10;

    invoke-direct {v4, p0}, Lcom/mapps/android/view/InterstitialView$10;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 575
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    if-eqz v3, :cond_0

    .line 576
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, ""

    iget-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v4}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 578
    .local v2, "message":Landroid/os/Message;
    const-string v3, "Ssp_imp"

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    invoke-virtual {v3}, Lcom/mezzo/common/network/data/DataNTSSP;->getSsp_imp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/mapps/android/view/InterstitialView;->simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V

    .line 588
    .end local v2    # "message":Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    new-instance v4, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;

    invoke-direct {v4, p0}, Lcom/mapps/android/view/InterstitialView$MyWebChromeClient;-><init>(Lcom/mapps/android/view/InterstitialView;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 590
    :try_start_0
    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 591
    .local v0, "base64":Ljava/lang/String;
    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    const-string/jumbo v4, "text/html; charset=utf-8"

    const-string v5, "base64"

    invoke-virtual {v3, v0, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v0    # "base64":Ljava/lang/String;
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->finish()V

    goto :goto_0
.end method

.method public creHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "<HTML>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 507
    const-string v1, "</HEAD>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    const-string v1, "<body style=\'margin:0,padding:0\',text-align:center,>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<img width=\'100%\'height=\'100%\'src=\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 510
    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const-string v1, "</html?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 512
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 425
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    if-eqz v0, :cond_0

    .line 426
    iget-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->bExist:Z

    if-nez v0, :cond_3

    .line 427
    iget-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->bTNext:Z

    if-nez v0, :cond_2

    .line 428
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_right:I

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    .line 436
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->unregisterFinishReceiver()V

    .line 440
    :cond_1
    return-void

    .line 430
    :cond_2
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_left:I

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_left:I

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    goto :goto_0

    .line 433
    :cond_3
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_right:I

    iget v1, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_right:I

    invoke-virtual {p0, v0, v1}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public getCloseImage()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 631
    .local v0, "asset":Landroid/content/res/AssetManager;
    const/4 v5, 0x0

    .line 632
    .local v5, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 634
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 635
    .local v4, "density":I
    sparse-switch v4, :sswitch_data_0

    .line 653
    const-string v7, "close_exxhigh.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 658
    :goto_0
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 659
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v7, 0xa0

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 660
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v7, v6, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 661
    const/4 v7, 0x1

    iput-boolean v7, v6, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 662
    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 664
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 671
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .end local v4    # "density":I
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v2

    .line 639
    .restart local v4    # "density":I
    :sswitch_0
    :try_start_2
    const-string v7, "close_high.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 641
    goto :goto_0

    .line 645
    :sswitch_1
    const-string v7, "close_exhigh.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 647
    goto :goto_0

    .line 649
    :sswitch_2
    const-string v7, "close_exxhigh.png"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 651
    goto :goto_0

    .line 667
    .end local v4    # "density":I
    :catch_0
    move-exception v7

    goto :goto_1

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "density":I
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 635
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public getNextImage(Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "bnext"    # Z

    .prologue
    .line 675
    const/4 v4, 0x0

    .line 676
    .local v4, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 678
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 679
    .local v3, "density":I
    sparse-switch v3, :sswitch_data_0

    .line 695
    const-string v6, "next_exxhigh"

    const-string/jumbo v7, "prev_exxhigh"

    invoke-direct {p0, p1, v6, v7}, Lcom/mapps/android/view/InterstitialView;->requestAssetImage(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 700
    :goto_0
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 701
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    const/16 v6, 0xa0

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 702
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 703
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 704
    const/4 v6, 0x0

    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 706
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 713
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .end local v3    # "density":I
    .end local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v1

    .line 683
    .restart local v3    # "density":I
    :sswitch_0
    :try_start_2
    const-string v6, "next_high"

    const-string/jumbo v7, "prev_high"

    invoke-direct {p0, p1, v6, v7}, Lcom/mapps/android/view/InterstitialView;->requestAssetImage(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 685
    goto :goto_0

    .line 687
    :sswitch_1
    const-string v6, "next_exhigh"

    const-string/jumbo v7, "prev_exhigh"

    invoke-direct {p0, p1, v6, v7}, Lcom/mapps/android/view/InterstitialView;->requestAssetImage(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 689
    goto :goto_0

    .line 691
    :sswitch_2
    const-string v6, "next_exxhigh"

    const-string/jumbo v7, "prev_exxhigh"

    invoke-direct {p0, p1, v6, v7}, Lcom/mapps/android/view/InterstitialView;->requestAssetImage(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 693
    goto :goto_0

    .line 709
    .end local v3    # "density":I
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "density":I
    .restart local v5    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 679
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_1
        0x1e0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    if-nez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 489
    :goto_0
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendFlickerEvent(I)V

    .line 488
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 485
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->bExist:Z

    .line 486
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->sendFlickerEvent(I)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 96
    invoke-virtual {p0, v7}, Lcom/mapps/android/view/InterstitialView;->requestWindowFeature(I)Z

    .line 97
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x106000d

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 98
    invoke-virtual {p0}, Lcom/mapps/android/view/InterstitialView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    .line 100
    const-string v4, "mediatype"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    .line 101
    const-string v4, "bnext"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mapps/android/view/InterstitialView;->bNext:Z

    .line 102
    const-string/jumbo v4, "viewinfo"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->viewInfo:Ljava/lang/String;

    .line 103
    const-string v4, "a_publisher"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->a_publisher:Ljava/lang/String;

    .line 104
    const-string v4, "a_media"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->a_media:Ljava/lang/String;

    .line 105
    const-string v4, "a_section"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->a_section:Ljava/lang/String;

    .line 106
    const-string/jumbo v4, "width"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->w:I

    .line 107
    const-string v4, "height"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->h:I

    .line 108
    const-string v4, ""

    sput-object v4, Lcom/mapps/android/view/InterstitialView;->SAVEREQUESTKEY:Ljava/lang/String;

    .line 109
    const-string/jumbo v4, "sspdata"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 110
    const-string/jumbo v4, "sspdata"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/mezzo/common/network/data/DataNTSSP;

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->sspData:Lcom/mezzo/common/network/data/DataNTSSP;

    .line 112
    :cond_0
    iget v4, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    if-eqz v4, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->registerFinishReceiver()V

    .line 114
    const-string v4, "in_right"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_right:I

    .line 115
    const-string/jumbo v4, "out_right"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_right:I

    .line 116
    const-string v4, "in_left"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_left:I

    .line 117
    const-string/jumbo v4, "out_left"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_left:I

    .line 119
    iget-boolean v4, p0, Lcom/mapps/android/view/InterstitialView;->bNext:Z

    if-eqz v4, :cond_1

    .line 120
    iget v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_right:I

    iget v5, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_right:I

    invoke-virtual {p0, v4, v5}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    .line 127
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 129
    .local v3, "root":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget v4, p0, Lcom/mapps/android/view/InterstitialView;->mediaType:I

    packed-switch v4, :pswitch_data_0

    .line 142
    :goto_1
    invoke-direct {p0, v3}, Lcom/mapps/android/view/InterstitialView;->createBtn(Landroid/widget/RelativeLayout;)V

    .line 143
    const-string v4, "isdialog"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 144
    .local v2, "resizeStyle":I
    packed-switch v2, :pswitch_data_1

    .line 150
    :goto_2
    return-void

    .line 122
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "resizeStyle":I
    .end local v3    # "root":Landroid/widget/RelativeLayout;
    :cond_1
    iget v4, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_in_left:I

    iget v5, p0, Lcom/mapps/android/view/InterstitialView;->resID_slide_out_left:I

    invoke-virtual {p0, v4, v5}, Lcom/mapps/android/view/InterstitialView;->overridePendingTransition(II)V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mapps/android/view/InterstitialView;->FinishReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0

    .line 134
    .restart local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "root":Landroid/widget/RelativeLayout;
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mapps/android/view/InterstitialView;->htmlTypeSetting(Landroid/widget/RelativeLayout;)V

    goto :goto_1

    .line 138
    :pswitch_1
    invoke-direct {p0, v3}, Lcom/mapps/android/view/InterstitialView;->imageTypeSetting(Landroid/widget/RelativeLayout;)V

    goto :goto_1

    .line 147
    .restart local v2    # "resizeStyle":I
    :pswitch_2
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->resize()V

    goto :goto_2

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 144
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 445
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 447
    iget v0, p0, Lcom/mapps/android/view/InterstitialView;->c_type:I

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/mapps/android/view/InterstitialView;->Interstital_Close()V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_close:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->buttonRemove(Landroid/widget/ImageView;)V

    .line 451
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_prev:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->buttonRemove(Landroid/widget/ImageView;)V

    .line 452
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->btn_next:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/mapps/android/view/InterstitialView;->buttonRemove(Landroid/widget/ImageView;)V

    .line 453
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 458
    :cond_1
    iget-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    if-nez v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    if-eqz v0, :cond_2

    .line 460
    iget-object v0, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    invoke-virtual {v0, v1}, Lcom/mezzo/common/network/Nt;->cancel(Z)Z

    .line 463
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 465
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/view/InterstitialView;->isLandingGo:Z

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 156
    return-void
.end method

.method public simpleServerapi(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 879
    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 880
    .local v0, "act":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendapi -->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : request"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 881
    new-instance v2, Lcom/mezzo/common/network/Nt;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v4, v4}, Lcom/mezzo/common/network/Nt;-><init>(Landroid/content/Context;Landroid/os/Handler;ZZ)V

    iput-object v2, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    .line 882
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    iget-object v3, p0, Lcom/mapps/android/view/InterstitialView;->progressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->setProgressbarListener(Lcom/mezzo/common/network/Nt$OnProgressbarListener;)V

    .line 883
    new-instance v1, Lcom/mezzo/common/network/request/RequestSimple;

    invoke-direct {v1, p0, p1, p2}, Lcom/mezzo/common/network/request/RequestSimple;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Message;)V

    .line 884
    .local v1, "imp":Lcom/mezzo/common/network/request/RequestSimple;
    new-instance v2, Lcom/mapps/android/view/InterstitialView$12;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/view/InterstitialView$12;-><init>(Lcom/mapps/android/view/InterstitialView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/mezzo/common/network/request/RequestSimple;->setConnectionListener(Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 900
    iget-object v2, p0, Lcom/mapps/android/view/InterstitialView;->nt:Lcom/mezzo/common/network/Nt;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/mezzo/common/network/request/RequestNTCommon;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/mezzo/common/network/Nt;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 901
    return-void
.end method
