.class Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NumberPickerInputFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NumberPicker;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/NumberPicker;Lcom/android/mms/ui/NumberPicker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;-><init>(Lcom/android/mms/ui/NumberPicker;)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 17
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    move-object v3, v0

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    move-object v3, v0

    #getter for: Lcom/android/mms/ui/NumberPicker;->mNumberInputFilter:Landroid/text/InputFilter;
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$1100(Lcom/android/mms/ui/NumberPicker;)Landroid/text/InputFilter;

    move-result-object v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 424
    :goto_0
    return-object v3

    .line 413
    :cond_0
    invoke-interface/range {p1 .. p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 414
    .local v11, filtered:Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p4

    move v1, v4

    move/from16 v2, p5

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p4 .. p4}, Landroid/text/Spanned;->length()I

    move-result v4

    move-object/from16 v0, p4

    move/from16 v1, p6

    move v2, v4

    invoke-interface {v0, v1, v2}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 417
    .local v14, result:Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 418
    .local v15, str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NumberPicker$NumberPickerInputFilter;->this$0:Lcom/android/mms/ui/NumberPicker;

    move-object v3, v0

    #getter for: Lcom/android/mms/ui/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/NumberPicker;->access$1000(Lcom/android/mms/ui/NumberPicker;)[Ljava/lang/String;

    move-result-object v10

    .local v10, arr$:[Ljava/lang/String;
    array-length v13, v10

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v13, :cond_2

    aget-object v16, v10, v12

    .line 419
    .local v16, val:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    .line 420
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v11

    .line 421
    goto :goto_0

    .line 418
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 424
    .end local v16           #val:Ljava/lang/String;
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method
