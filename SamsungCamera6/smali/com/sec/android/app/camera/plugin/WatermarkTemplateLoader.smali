.class public Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;
.super Ljava/lang/Object;
.source "WatermarkTemplateLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;,
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;,
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;,
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;,
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;,
        Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;
    }
.end annotation


# static fields
.field private static final WATERMARK_MAI_TEXT_FONT_COLOR:I

.field private static final WATERMARK_TEXT_FONT_COLOR:I

.field private static mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsTemplateEntriesLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0e004d

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->WATERMARK_TEXT_FONT_COLOR:I

    const v0, 0x7f0e004a

    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->getColor(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->WATERMARK_MAI_TEXT_FONT_COLOR:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mIsTemplateEntriesLoaded:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->WATERMARK_TEXT_FONT_COLOR:I

    return v0
.end method

.method public static findCatetoryById(I)I
    .locals 3

    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v2

    if-ne v2, p0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->getCategory()I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static findEntryByCategory(I)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;",
            ">;"
        }
    .end annotation

    sget-boolean v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mIsTemplateEntriesLoaded:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->loadTemplateEntries()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mIsTemplateEntriesLoaded:Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$100(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v3

    if-ne v3, p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static findEntryById(I)Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;
    .locals 3

    sget-boolean v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mIsTemplateEntriesLoaded:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->loadTemplateEntries()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mIsTemplateEntriesLoaded:Z

    :cond_0
    sget-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v2

    if-ne v2, p0, :cond_1

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNextId(I)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v4

    if-ne v4, p0, :cond_1

    :cond_0
    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v3

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v3

    goto :goto_1
.end method

.method public static getPreviousId(I)I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v0}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v4

    if-ne v4, p0, :cond_1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_2

    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v3

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    sget-object v4, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    invoke-static {v3}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;->access$000(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;)I

    move-result v3

    goto :goto_1
.end method

.method private static loadTemplateEntries()V
    .locals 24

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x238d

    const/16 v3, 0x1db0

    const v4, 0x7f020288

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x238e

    const/16 v3, 0x1db0

    const v4, 0x7f020290

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x238f

    const/16 v3, 0x1db0

    const v4, 0x7f02028e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2390

    const/16 v3, 0x1db0

    const v4, 0x7f020248

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2391

    const/16 v3, 0x1db0

    const v4, 0x7f02029a

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2392

    const/16 v3, 0x1db0

    const v4, 0x7f02029e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2393

    const/16 v3, 0x1db0

    const v4, 0x7f020280

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2394

    const/16 v3, 0x1db0

    const v4, 0x7f020260

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2395

    const/16 v3, 0x1db0

    const v4, 0x7f020252

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f1

    const/16 v18, 0x1db1

    const v19, 0x7f020256

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x42200000    # 40.0f

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x41e00000    # 28.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "125"

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->NONE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41840000    # 16.5f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->SHAONV:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f2

    const/16 v18, 0x1db1

    const v19, 0x7f02026a

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v4, 0x0

    const/high16 v5, 0x43430000    # 195.0f

    const/high16 v6, 0x429a0000    # 77.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->HOLIDAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x42880000    # 68.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    const/16 v22, 0x1

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x42ac0000    # 86.0f

    const/high16 v5, 0x43570000    # 215.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FOR_FESTIVAL:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41880000    # 17.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f3

    const/16 v18, 0x1db1

    const v19, 0x7f02027c

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x429c0000    # 78.0f

    const/high16 v5, 0x433a0000    # 186.0f

    const/high16 v6, 0x42200000    # 40.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DAY_OF_WEEK:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41f00000    # 30.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->ROBOTO_BLACK:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    const/16 v22, 0x1

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x41300000    # 11.0f

    const/high16 v4, 0x42fe0000    # 127.0f

    const/high16 v5, 0x433a0000    # 186.0f

    const/high16 v6, 0x41100000    # 9.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41300000    # 11.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->ROBOTO_MEDIUM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f4

    const/16 v18, 0x1db1

    const v19, 0x7f020278

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x42740000    # 61.0f

    const/high16 v4, 0x42040000    # 33.0f

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x43020000    # 130.0f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->SOLAR_TERM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x42500000    # 52.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    const/16 v22, 0x1

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x42f20000    # 121.0f

    const/high16 v4, 0x42040000    # 33.0f

    const/high16 v5, 0x41980000    # 19.0f

    const/high16 v6, 0x42480000    # 50.0f

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LUNAR_YEAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41400000    # 12.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x23f5

    const/16 v3, 0x1db1

    const v4, 0x7f020238

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x23f6

    const/16 v3, 0x1db1

    const v4, 0x7f02025e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f7

    const/16 v18, 0x1db1

    const v19, 0x7f02025a

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_UPDATE_MINUTES:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x41580000    # 13.5f

    const/high16 v4, 0x42de0000    # 111.0f

    const/high16 v5, 0x432e0000    # 174.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY_AND_TIME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41880000    # 17.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->MIAO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x23f8

    const/16 v3, 0x1db1

    const v4, 0x7f02023a

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x23f9

    const/16 v18, 0x1db1

    const v19, 0x7f020264

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x42920000    # 73.0f

    const/high16 v5, 0x43420000    # 194.0f

    const/high16 v6, 0x41b00000    # 22.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41800000    # 16.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->MIAO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x2455

    const/16 v18, 0x1db2

    const v19, 0x7f020236

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x42ea0000    # 117.0f

    const/high16 v5, 0x42e20000    # 113.0f

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41400000    # 12.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->MIAO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2456

    const/16 v3, 0x1db2

    const v4, 0x7f02029c

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x2457

    const/16 v18, 0x1db2

    const v19, 0x7f020296

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x423c0000    # 47.0f

    const/high16 v5, 0x43400000    # 192.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_02:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41300000    # 11.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x2458

    const/16 v18, 0x1db2

    const v19, 0x7f020242

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x42d40000    # 106.0f

    const/high16 v5, 0x42ce0000    # 103.0f

    const/high16 v6, 0x41800000    # 16.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING_01:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41300000    # 11.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->HANS_REGULAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2459

    const/16 v3, 0x1db2

    const v4, 0x7f020284

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x245a

    const/16 v3, 0x1db2

    const v4, 0x7f02027e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x245b

    const/16 v3, 0x1db2

    const v4, 0x7f02023c

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x245c

    const/16 v18, 0x1db2

    const v19, 0x7f020234

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x42340000    # 45.0f

    const/4 v4, 0x0

    const/high16 v5, 0x42c20000    # 97.0f

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CITY_NAME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x42400000    # 48.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x245d

    const/16 v3, 0x1db2

    const v4, 0x7f02024e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v17, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v18, 0x24b9

    const/16 v19, 0x1db3

    const v20, 0x7f02026c

    sget-object v21, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x423a0000    # 46.5f

    const/high16 v4, 0x42ee0000    # 119.0f

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->PM25:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41300000    # 11.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->HANS_REGULAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    sget v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->WATERMARK_MAI_TEXT_FONT_COLOR:I

    invoke-direct/range {v1 .. v15}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;III)V

    aput-object v1, v22, v23

    const/16 v23, 0x1

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x423a0000    # 46.5f

    const/high16 v4, 0x43060000    # 134.0f

    const/high16 v5, 0x42960000    # 75.0f

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CURRENT_DAY:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41300000    # 11.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    sget v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->WATERMARK_MAI_TEXT_FONT_COLOR:I

    invoke-direct/range {v1 .. v15}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;III)V

    aput-object v1, v22, v23

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x24ba

    const/16 v18, 0x1db3

    const v19, 0x7f02026e

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x2

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x429e0000    # 79.0f

    const/high16 v4, 0x41b80000    # 23.0f

    const/high16 v5, 0x42d00000    # 104.0f

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->CITY_NAME:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x42400000    # 48.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->HANS_REGULAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    const/16 v22, 0x1

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x428e0000    # 71.0f

    const/high16 v5, 0x434b0000    # 203.0f

    const/high16 v6, 0x41700000    # 15.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41100000    # 9.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x24bb

    const/16 v3, 0x1db3

    const v4, 0x7f020276

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x24bc

    const/16 v3, 0x1db3

    const v4, 0x7f020244

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x24bd

    const/16 v3, 0x1db3

    const v4, 0x7f02027a

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x24be

    const/16 v3, 0x1db3

    const v4, 0x7f02023e

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x24bf

    const/16 v3, 0x1db3

    const v4, 0x7f020240

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x24c0

    const/16 v18, 0x1db3

    const v19, 0x7f020298

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x42380000    # 46.0f

    const/high16 v4, 0x42e60000    # 115.0f

    const/high16 v5, 0x42880000    # 68.0f

    const/high16 v6, 0x41500000    # 13.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->PM25:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41100000    # 9.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->HANS_REGULAR:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x24c1

    const/16 v18, 0x1db3

    const v19, 0x7f02025c

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x42940000    # 74.0f

    const/high16 v5, 0x434f0000    # 207.0f

    const/high16 v6, 0x41980000    # 19.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->DATE_FORMAT_03:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41700000    # 15.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->KAITI:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x251d

    const/16 v3, 0x1db4

    const v4, 0x7f020272

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x251e

    const/16 v3, 0x1db4

    const v4, 0x7f020292

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x251f

    const/16 v3, 0x1db4

    const v4, 0x7f020266

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2520

    const/16 v3, 0x1db4

    const v4, 0x7f020286

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2521

    const/16 v3, 0x1db4

    const v4, 0x7f02028a

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x2522

    const/16 v18, 0x1db4

    const v19, 0x7f020294

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/4 v3, 0x0

    const/high16 v4, 0x43180000    # 152.0f

    const/high16 v5, 0x430d0000    # 141.0f

    const/high16 v6, 0x41300000    # 11.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, ""

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->LOCATION_STRING:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x41100000    # 9.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->SHAONV:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x1

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2523

    const/16 v3, 0x1db4

    const v4, 0x7f02028c

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2524

    const/16 v3, 0x1db4

    const v4, 0x7f020246

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2525

    const/16 v3, 0x1db4

    const v4, 0x7f020282

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->RIGHT_BOTTOM:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2581

    const/16 v3, 0x1db5

    const v4, 0x7f020274

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v15, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v16, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v17, 0x2582

    const/16 v18, 0x1db5

    const v19, 0x7f020258

    sget-object v20, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v1, 0x1

    new-array v0, v1, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    sget-object v2, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;->EXTRA_COMMON:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;

    const/high16 v3, 0x41b00000    # 22.0f

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v5, 0x42c00000    # 96.0f

    const/high16 v6, 0x42100000    # 36.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v9, "\u8650\u817f\u65e5"

    sget-object v10, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;->NONE:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;

    const/high16 v11, 0x42000000    # 32.0f

    sget-object v12, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;->MIAO:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;

    const/4 v13, 0x2

    const/4 v14, 0x2

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;-><init>(Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraType;FFFFZZLjava/lang/String;Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextType;FLcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$TextFont;II)V

    aput-object v1, v21, v22

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2583

    const/16 v3, 0x1db5

    const v4, 0x7f02024c

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2584

    const/16 v3, 0x1db5

    const v4, 0x7f020250

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2585

    const/16 v3, 0x1db5

    const v4, 0x7f020268

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2586

    const/16 v3, 0x1db5

    const v4, 0x7f020270

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2587

    const/16 v3, 0x1db5

    const v4, 0x7f020254

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2588

    const/16 v3, 0x1db5

    const v4, 0x7f02024a

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->LEFT_TOP:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v7, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;

    const/16 v2, 0x2589

    const/16 v3, 0x1db5

    const v4, 0x7f020262

    sget-object v5, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;->CENTER:Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$StandardTemplateEntry;-><init>(IIILcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$DefaultPosition;[Lcom/sec/android/app/camera/plugin/WatermarkTemplateLoader$ExtraMessage;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
